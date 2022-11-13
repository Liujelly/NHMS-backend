package xh.nursinghome.system.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.entity.HealthIndex;
import xh.nursinghome.system.aop.OperationLogAnnotation;
import xh.nursinghome.system.entity.HealthIndexStandard;
import xh.nursinghome.system.entity.PhysicalExam;
import xh.nursinghome.system.service.*;

import java.util.List;

/**
 * @author ljy
 * @create 2022-11-05 22:41
 */
@RestController
@RequestMapping("/exam")
public class PhysicalExamController {
    @Autowired
    private PhysicalExamService physicalExamService;
    @Autowired
    private OrderManService orderManService;
    @Autowired
    private HealthIndexService healthIndexService;
    @Autowired
    private HealthIndexStandardService healthIndexStandardService;
    @Autowired
    private HealthLevelService healthLevelService;
    @Autowired
    private DiseaseWarningService diseaseWarningService;

    @OperationLogAnnotation(operModul = "健康管理-体检信息",operType = "查询",operDesc = "查询体检信息")
    @GetMapping("/show")
    public PhysicalExam selectExam(@RequestParam Integer orderId){

        return physicalExamService.selectExam(orderId);
    }
    @OperationLogAnnotation(operModul = "健康管理-体检信息",operType = "添加",operDesc = "添加体检信息")
    @PostMapping("/savePE")
    public Boolean savePE(@RequestBody PhysicalExam physicalExam){
        Integer orderId=physicalExam.getOrderId();

        if(physicalExamService.savePE(physicalExam)){
            //改变体检状态
            orderManService.examStateChange(orderId);
            //获得体检标准
            List<HealthIndexStandard> standards = healthIndexStandardService.showStandard();
            HealthIndexStandard standard = standards.get(0);
            //将体检数据与标准进行比较获得健康指数
            HealthIndex healthIndex = healthIndexService.getHealthIndex(physicalExam,standard);
            //保存健康指数
            healthIndexService.addHealthIndex(healthIndex);
            //保存健康等级基本信息（老人编号，姓名）
            healthLevelService.addName(healthIndex);
            //保存疾病预警基本信息
            diseaseWarningService.addName(healthIndex);
            return true;
        }
        else
            return false;
    }
    @OperationLogAnnotation(operModul = "健康管理-体检信息",operType = "修改",operDesc = "修改体检信息")
    @PostMapping("updatePE")
    public Boolean updatePE(@RequestBody PhysicalExam physicalExam){
        Integer orderId = physicalExam.getOrderId();
        if(physicalExamService.updatePE(physicalExam)){
            return true;
        }
        else
            return false;
    }


}

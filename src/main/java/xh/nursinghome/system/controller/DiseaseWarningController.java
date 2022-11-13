package xh.nursinghome.system.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.aop.OperationLogAnnotation;
import xh.nursinghome.system.entity.DiseaseWarning;
import xh.nursinghome.system.entity.HealthIndex;
import xh.nursinghome.system.entity.HealthIndexStandard;
import xh.nursinghome.system.entity.PhysicalExam;
import xh.nursinghome.system.service.DiseaseWarningService;
import xh.nursinghome.system.service.HealthIndexService;
import xh.nursinghome.system.service.HealthIndexStandardService;
import xh.nursinghome.system.service.PhysicalExamService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author ljy
 * @create 2022-11-11 1:07
 */
@RestController
@RequestMapping("/disease")
public class DiseaseWarningController {
    @Autowired
    private DiseaseWarningService diseaseWarningService;
    @Autowired
    private PhysicalExamService physicalExamService;
    @Autowired
    private HealthIndexService healthIndexService;
    @Autowired
    private HealthIndexStandardService healthIndexStandardService;



//    @OperationLogAnnotation(operModul = "健康管理-疾病预警",operType = "查询",operDesc = "展示疾病预警信息")
    @GetMapping("/show")
    public Map<String,Object> showDisease(@RequestParam Integer pageNum, @RequestParam Integer pageSize,
                                          @RequestParam(defaultValue = "")Integer orderId,
                                          @RequestParam(defaultValue = "")String orderName){
        pageNum=(pageNum-1)*pageSize;

        List<DiseaseWarning> data= diseaseWarningService.showWarning(pageNum,pageSize,orderId,orderName);
        Integer total = diseaseWarningService.selectTotal();
        Map<String,Object> res = new HashMap<>();
        res.put("data",data);
        res.put("total",total);
        return res;
    }
    @OperationLogAnnotation(operModul = "健康管理-疾病预警",operType = "新增",operDesc = "新增疾病预警信息")
    @PostMapping("/add")
    public Boolean addDiseaseWarning(@RequestBody Integer orderId){

        DiseaseWarning diseaseWarning = new DiseaseWarning();
        diseaseWarning.setOrderId(orderId);
        //根据id获取老人体检数据
        PhysicalExam physicalExam = physicalExamService.selectExam(orderId);
        //获取健康标准
        List<HealthIndexStandard> standards = healthIndexStandardService.showStandard();
        HealthIndexStandard standard = standards.get(0);
        //得到各项数据的健康指数
        HealthIndex healthIndex = healthIndexService.getHealthIndex(physicalExam,standard);
        //取出分析
        String suggest = healthIndex.getSuggest();

        diseaseWarning.setDiseaseSuggest(suggest);
        //取出疾病
        String disease = healthIndex.getDisease();
        diseaseWarning.setWarningDisease(disease);
        //实现增加
        Boolean res = diseaseWarningService.addWarning(diseaseWarning);
        return res;
    }

    @OperationLogAnnotation(operModul = "健康管理-疾病预警",operType = "修改",operDesc = "修改疾病预警建议")
    @PostMapping("/update")
    public Boolean updateSuggest(@RequestBody DiseaseWarning diseaseWarning){
        if(diseaseWarningService.updateSuggest(diseaseWarning)){
            return true;
        }
        else
            return false;
    }
}

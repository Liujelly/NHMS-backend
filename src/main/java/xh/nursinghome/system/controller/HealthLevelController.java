package xh.nursinghome.system.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.entity.HealthIndex;
import xh.nursinghome.system.entity.HealthIndexStandard;
import xh.nursinghome.system.aop.OperationLogAnnotation;
import xh.nursinghome.system.entity.HealthLevel;
import xh.nursinghome.system.entity.PhysicalExam;
import xh.nursinghome.system.service.HealthIndexService;
import xh.nursinghome.system.service.HealthIndexStandardService;
import xh.nursinghome.system.service.HealthLevelService;
import xh.nursinghome.system.service.PhysicalExamService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author ljy
 * @create 2022-11-09 21:23
 */
@RestController
@RequestMapping("/healthLevel")
public class HealthLevelController {
    @Autowired
    private HealthLevelService healthLevelService;
    @Autowired
    private HealthIndexService healthIndexService;
    @Autowired
    private PhysicalExamService physicalExamService;
    @Autowired
    private HealthIndexStandardService healthIndexStandardService;


    @OperationLogAnnotation(operModul = "健康管理-健康等级",operType = "查询",operDesc = "查询健康等级")
    @GetMapping("/show")
    public Map<String,Object> showLevel(@RequestParam Integer pageNum, @RequestParam Integer pageSize,
                                        @RequestParam(defaultValue = "")Integer orderId,
                                        @RequestParam(defaultValue = "")String orderName){
        pageNum=(pageNum-1)*pageSize;

        List<HealthLevel> data= healthLevelService.showLevel(pageNum,pageSize,orderId,orderName);
        Integer total = healthIndexService.selectTotal();
        Map<String,Object> res = new HashMap<>();
        res.put("data",data);
        res.put("total",total);
        return res;
    }
    @OperationLogAnnotation(operModul = "健康管理-健康等级",operType = "增加",operDesc = "增加健康等级")
    @PostMapping("/add")
    public Boolean add(@RequestBody Integer orderId){
        HealthLevel healthLevel = new HealthLevel();
        //根据id获取该老人的健康指数
        Integer num = orderId;
        Integer indexById = healthIndexService.selectIndexById(orderId);
        healthLevel.setOrderId(orderId);
        healthLevel.setHealthIndexNum(indexById);
        //根据健康指数得出老人的健康等级
        String level = healthLevelService.getLevel(indexById);
        healthLevel.setHealthLevelNum(level);
        //根据id获取老人的健康建议
            //根据老人id获取健康指数对象
        //根据id获取老人体检数据
        PhysicalExam physicalExam = physicalExamService.selectExam(orderId);
        //获取健康标准
        List<HealthIndexStandard> standards = healthIndexStandardService.showStandard();
        HealthIndexStandard standard = standards.get(0);
        //得到各项数据的健康指数
        HealthIndex healthIndex = healthIndexService.getHealthIndex(physicalExam,standard);
        //取出分析
        String analyse = healthIndex.getAnalyse();

        healthLevel.setSuggest(analyse);
        //实现增加
        Boolean res = healthLevelService.addLevel(healthLevel);
        return res;
    }
    @OperationLogAnnotation(operModul = "健康管理-健康等级",operType = "修改",operDesc = "修改健康等级")
    @PostMapping("/update")
    public Boolean updateAnalyse(@RequestBody HealthLevel healthLevel){
        if(healthLevelService.updateAnalysis(healthLevel)){
            return true;
        }
        else
            return false;
    }


}

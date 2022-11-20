package xh.nursinghome.system.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import xh.nursinghome.system.aop.OperationLogAnnotation;
import xh.nursinghome.system.entity.PhysicalExam;
import xh.nursinghome.system.service.AndHealthOldService;
import xh.nursinghome.system.service.DiseaseWarningService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author ljy
 * @create 2022-11-14 15:36
 */
@RestController
@RequestMapping("/and")
public class AndHealthOldController {
    @Autowired
    private AndHealthOldService andHealthOldService;
    @Autowired
    private DiseaseWarningService diseaseWarningService;


    @OperationLogAnnotation(operModul = "健康管理-老人健康",operType = "查询",operDesc = "查询健康档案信息")
    @GetMapping("/show")
    public Map<String,Object> showIndex(@RequestParam Integer pageNum, @RequestParam Integer pageSize,
                                        @RequestParam(defaultValue = "")Integer orderId,
                                        @RequestParam(defaultValue = "")String orderName){
        pageNum=(pageNum-1)*pageSize;

        List<PhysicalExam> data = andHealthOldService.selectAllExam(pageNum, pageSize, orderId, orderName);
        Integer total = andHealthOldService.selectPhyTotal();
        Map<String,Object> res = new HashMap<>();
        String healthLevelNum = andHealthOldService.getHealthLevelNum(20);
        String healthLevelSuggest = andHealthOldService.getHealthLevelSuggest(20);
        res.put("data",data);
        res.put("total",total);
        res.put("healthLevelNum",healthLevelNum);
        res.put("healthLevelSuggest",healthLevelSuggest);
        return res;
    }
    @GetMapping("/showHealth")
    public Map<String,Object> showHealth(@RequestParam(defaultValue = "")Integer orderId){
        Map<String,Object> res = new HashMap<>();
        String healthLevelNum = andHealthOldService.getHealthLevelNum(orderId);
        String healthLevelSuggest = andHealthOldService.getHealthLevelSuggest(orderId);
        String diseaseNum = andHealthOldService.getDiseaseNum(orderId);
        String diseaseSuggest = andHealthOldService.getDiseaseSuggest(orderId);
        String orderName = andHealthOldService.getOrderName(orderId);
        res.put("healthLevelNum",healthLevelNum);
        res.put("healthLevelSuggest",healthLevelSuggest);
        res.put("diseaseNum",diseaseNum);
        res.put("diseaseSuggest",diseaseSuggest);
        res.put("orderName",orderName);
        res.put("orderId",orderId);
        return res;
    }

}

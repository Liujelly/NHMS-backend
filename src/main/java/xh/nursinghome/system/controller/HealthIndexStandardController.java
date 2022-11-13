package xh.nursinghome.system.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.entity.HealthIndexStandard;
import xh.nursinghome.system.service.HealthIndexService;
import xh.nursinghome.system.aop.OperationLogAnnotation;
import xh.nursinghome.system.service.HealthIndexStandardService;
import xh.nursinghome.system.service.OrderManService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author ljy
 * @create 2022-11-09 23:23
 */
@RestController
@RequestMapping("/standard")
public class HealthIndexStandardController {

    @Autowired
    private HealthIndexStandardService healthIndexStandardService;
    @Autowired
    private OrderManService orderManService;
    @Autowired
    private HealthIndexService healthIndexService;

    @OperationLogAnnotation(operModul = "健康管理-健康指数标准",operType = "查询",operDesc = "查询健康指数标准")
    @GetMapping ("/show")
    public Map<String,Object> show(){
        Integer totalNum = orderManService.selectTotal();
        Integer phyNum = healthIndexService.selectTotal();
        List<HealthIndexStandard> data = healthIndexStandardService.showStandard();
        Map<String,Object> res = new HashMap<>();
        res.put("data",data);
        res.put("totalNum",totalNum);
        res.put("phyNum",phyNum);
        return res;
    }
    @OperationLogAnnotation(operModul = "健康管理-健康指数标准",operType = "修改",operDesc = "修改健康指数标准")
    @PostMapping("/update")
    public Boolean updateStandard(@RequestBody HealthIndexStandard healthIndexStandard){
        Integer standardId=1;
        healthIndexStandard.setStandardId(standardId);
        if(healthIndexStandardService.updateStandard(healthIndexStandard)){
            return true;
        }
        else return false;
    }


}

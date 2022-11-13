package xh.nursinghome.system.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import xh.nursinghome.system.aop.OperationLogAnnotation;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import xh.nursinghome.system.entity.HealthIndex;
import xh.nursinghome.system.service.HealthIndexService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author ljy
 * @create 2022-11-06 9:55
 */
@RestController
@RequestMapping("/healthIndex")
public class HealthIndexController {

    @Autowired
    private HealthIndexService healthIndexService;


    @OperationLogAnnotation(operModul = "健康管理-健康指数",operType = "查询",operDesc = "查询健康指数信息")
    @GetMapping("/show")
    public Map<String,Object> showIndex(@RequestParam Integer pageNum,@RequestParam Integer pageSize,
                                        @RequestParam(defaultValue = "")Integer orderId,
                                        @RequestParam(defaultValue = "")String orderName){
        pageNum=(pageNum-1)*pageSize;

        List<HealthIndex> data= healthIndexService.showIndex(pageNum,pageSize,orderId,orderName);
        Integer total = healthIndexService.selectTotal();
        Map<String,Object> res = new HashMap<>();
        res.put("data",data);
        res.put("total",total);
        return res;
    }
}

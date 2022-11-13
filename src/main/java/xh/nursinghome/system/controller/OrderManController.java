package xh.nursinghome.system.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import xh.nursinghome.system.aop.OperationLogAnnotation;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import xh.nursinghome.system.entity.OrderMan;
import xh.nursinghome.system.service.OrderManService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author ljy
 * @create 2022-11-05 19:23
 */
@RestController
@RequestMapping("/order")
public class OrderManController {
    @Autowired
    private OrderManService orderManService;

    @OperationLogAnnotation(operModul = "健康管理-老人信息",operType = "查询",operDesc = "查询老人信息")
    @GetMapping("/page")
    public Map<String,Object>findPage(@RequestParam Integer pageNum,
                                      @RequestParam Integer pageSize,
                                      @RequestParam(defaultValue = "") Integer orderId,
                                      @RequestParam(defaultValue = "") String orderName,
                                      @RequestParam(defaultValue = "") String  orderIdCard
                                      ){
        pageNum=(pageNum-1)*pageSize;
        List<OrderMan> data= orderManService.selectPage(pageNum,pageSize,orderId,orderName,orderIdCard);

        Integer total = orderManService.selectTotal();
        Map<String, Object> res = new HashMap<>();
        res.put("data",data);
        res.put("total",total);
        return res;


    }
}

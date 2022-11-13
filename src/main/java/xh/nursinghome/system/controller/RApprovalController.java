package xh.nursinghome.system.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.aop.OperationLogAnnotation;
import xh.nursinghome.system.entity.retreat;
import xh.nursinghome.system.service.impl.RApprovalService;

import java.util.Map;

@RestController
public class RApprovalController {
    @Autowired
    RApprovalService rApprovalService;
    @GetMapping("/page5")
    @OperationLogAnnotation(operModul = "退住批准",operType = "查询",operDesc = "查询退住数据")
    public Map<String,Object> SelectApprovalController(@RequestParam Integer pageNum, @RequestParam Integer pageSize){
        return rApprovalService.SelectRetreatService(pageNum,pageSize);
    }
    @PostMapping("/Rapproval")
    @OperationLogAnnotation(operModul = "老人管理-退住管理-退住批准",operType = "批准",operDesc = "批准老人退住")
    public Integer RApprovalController(@RequestBody retreat retreat){
        return rApprovalService.RApprovalService(retreat);
    }
    @DeleteMapping("/Rapproval/{id}")
    @OperationLogAnnotation(operModul = "老人管理-退住管理-退住批准",operType = "删除",operDesc = "驳回老人退住")
    public Integer DeleteController(@PathVariable Integer id)
    {
        return rApprovalService.Delete(id);
    }

}

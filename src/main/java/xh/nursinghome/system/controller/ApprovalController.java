package xh.nursinghome.system.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.aop.OperationLogAnnotation;
import xh.nursinghome.system.entity.checkin;
import xh.nursinghome.system.service.impl.ApprovalService;

import java.util.Map;

@RestController
public class ApprovalController {
    @Autowired
    ApprovalService approvalService;
    @GetMapping("/page1")
    @OperationLogAnnotation(operModul = "老人管理-入住管理-入住批准",operType = "查询",operDesc = "查询老人入住信息")
    public Map<String,Object> SelectApprovalController(@RequestParam Integer pageNum, @RequestParam Integer pageSize,@RequestParam String name,@RequestParam String sex){
        return approvalService.SelectApprovalMapper(pageNum,pageSize,name,sex);
    }
    @PostMapping("/approval")
    @OperationLogAnnotation(operModul = "老人管理-入住管理-入住批准",operType = "批准",operDesc = "批准老人入住")
    public Integer InsertApproval(@RequestBody checkin checkin)
    {
        return approvalService.InsertApprovalMapper(checkin);
    }
    @DeleteMapping("/approval/{id}")
    @OperationLogAnnotation(operModul = "老人管理-入住管理-入住批准",operType = "删除",operDesc = "驳回老人入住")
    public Integer DeleteApproval(@PathVariable("id")Integer id)
    {
        return approvalService.DeleteApproval(id);
    }

}

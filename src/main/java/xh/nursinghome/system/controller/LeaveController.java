package xh.nursinghome.system.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.aop.OperationLogAnnotation;
import xh.nursinghome.system.entity.leave;
import xh.nursinghome.system.model.leave1;
import xh.nursinghome.system.service.impl.LeaveService;

import java.util.Map;

@RestController
public class LeaveController {
    @Autowired
    LeaveService leaveService;
    @GetMapping("/pagel")
    @OperationLogAnnotation(operModul = "请假批准",operType = "查询",operDesc = "查询请假数据")
    public Map<String,Object> SelectCheckInController(@RequestParam Integer pageNum, @RequestParam Integer pageSize, @RequestParam String name){
        return leaveService.SelectLeaveService(pageNum,pageSize,name);
    }
    @GetMapping("/leaveid")
    public Map<String,Object> SelectElderlyController(){
        return leaveService.SelectLeaveidService();
    }
    @PostMapping("/leaveadd")
    @OperationLogAnnotation(operModul = "请假批准",operType = "添加",operDesc = "添加请假数据")
    public Integer InsertLeave(@RequestBody leave1 leave1)
    {
        System.out.println(leave1);
        return leaveService.Insertleave(leave1);
    }
    @PostMapping("/leaveapproval")
    @OperationLogAnnotation(operModul = "老人管理-请假管理-请假批准",operType = "批准",operDesc = "批准请假")
    public Integer LeaveApproval(@RequestBody leave leave)
    {
        return leaveService.LeaveApproval(leave);
    }
    @DeleteMapping("/leave/{id}")
    @OperationLogAnnotation(operModul = "老人管理-请假管理-请假批准",operType = "删除",operDesc = "删除请假数据")
    public Integer DeleteLeave(@PathVariable("id") Integer id)
    {
        return leaveService.DeleteLeave(id);
    }
}

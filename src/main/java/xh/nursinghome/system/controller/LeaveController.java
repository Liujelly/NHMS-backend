package xh.nursinghome.system.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.entity.leave;
import xh.nursinghome.system.model.leave1;
import xh.nursinghome.system.service.impl.LeaveService;

import java.util.Map;

@RestController
public class LeaveController {
    @Autowired
    LeaveService leaveService;
    @GetMapping("/pagel")
    public Map<String,Object> SelectCheckInController(@RequestParam Integer pageNum, @RequestParam Integer pageSize, @RequestParam String name){
        return leaveService.SelectLeaveService(pageNum,pageSize,name);
    }
    @GetMapping("/leaveid")
    public Map<String,Object> SelectElderlyController(){
        return leaveService.SelectLeaveidService();
    }
    @PostMapping("/leaveadd")
    public Integer InsertLeave(@RequestBody leave1 leave1)
    {
        System.out.println(leave1);
        return leaveService.Insertleave(leave1);
    }
    @PostMapping("/leaveapproval")
    public Integer LeaveApproval(@RequestBody leave leave)
    {
        return leaveService.LeaveApproval(leave);
    }
    @DeleteMapping("/leave/{id}")
    public Integer DeleteLeave(@PathVariable("id") Integer id)
    {
        return leaveService.DeleteLeave(id);
    }
}

package xh.nursinghome.system.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.entity.checkin;
import xh.nursinghome.system.service.impl.ApprovalService;

import java.util.Map;

@RestController
public class ApprovalController {
    @Autowired
    ApprovalService approvalService;
    @GetMapping("/page1")
    public Map<String,Object> SelectApprovalController(@RequestParam Integer pageNum, @RequestParam Integer pageSize,@RequestParam String name,@RequestParam String sex){
        return approvalService.SelectApprovalMapper(pageNum,pageSize,name,sex);
    }
    @PostMapping("/approval")
    public Integer InsertApproval(@RequestBody checkin checkin)
    {
        return approvalService.InsertApprovalMapper(checkin);
    }
    @DeleteMapping("/approval/{id}")
    public Integer DeleteApproval(@PathVariable("id")Integer id)
    {
        return approvalService.DeleteApproval(id);
    }

}

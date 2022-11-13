package xh.nursinghome.system.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import xh.nursinghome.system.aop.OperationLogAnnotation;
import xh.nursinghome.system.service.impl.LeaveArchiveService;

import java.util.Map;

@RestController
public class LeaveArchiveController {
    @Autowired
    LeaveArchiveService leaveArchiveService;
    @GetMapping("/pagele")
    @OperationLogAnnotation(operModul = "老人管理-档案管理-请假档案",operType = "查询",operDesc = "查询请假档案")
    public Map<String,Object> SelectCheckInController(@RequestParam Integer pageNum, @RequestParam Integer pageSize, @RequestParam String name){
        return leaveArchiveService.SelectLeaveArchiveMapper(pageNum,pageSize,name);
    }
}

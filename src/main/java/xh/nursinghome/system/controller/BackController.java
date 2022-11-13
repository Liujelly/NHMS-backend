package xh.nursinghome.system.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.aop.OperationLogAnnotation;
import xh.nursinghome.system.entity.back;
import xh.nursinghome.system.model.back1;
import xh.nursinghome.system.service.impl.BackService;

import java.util.Map;

@RestController
public class BackController {
    @Autowired
    BackService backService;
    @GetMapping("/pageb")
    @OperationLogAnnotation(operModul = "老人管理-请假管理-回院批准",operType = "查询",operDesc = "查询老人回院数据")
    public Map<String,Object> SelectCheckInController(@RequestParam Integer pageNum, @RequestParam Integer pageSize, @RequestParam String name){
        return backService.SelectBackService(pageNum,pageSize,name);
    }
    @GetMapping("/backid")
    public Map<String,Object> SelectElderlyController(){
        return backService.SelectBackidService();
    }
    @PostMapping("/backadd")
    @OperationLogAnnotation(operModul = "老人管理-请假管理-回院批准",operType = "增加",operDesc = "增加回院数据")
    public Integer InsertBack(@RequestBody back1 back1)
    {
        return backService.Insertback(back1);
    }
    @PostMapping("/backapproval")
    @OperationLogAnnotation(operModul = "老人管理-请假管理-回院批准",operType = "批准",operDesc = "批准老人回院")
    public Integer LeaveApproval(@RequestBody back back)
    {
        return backService.BackApproval(back);
    }
    @DeleteMapping("/back/{id}")
    @OperationLogAnnotation(operModul = "老人管理-请假管理-回院批准",operType = "删除",operDesc = "驳回老人回院")
    public Integer DeleteLeave(@PathVariable("id") Integer id)
    {
        return backService.DeleteBack(id);
    }

}

package xh.nursinghome.system.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.entity.back;
import xh.nursinghome.system.model.back1;
import xh.nursinghome.system.service.impl.BackService;

import java.util.Map;

@RestController
public class BackController {
    @Autowired
    BackService backService;
    @GetMapping("/pageb")
    public Map<String,Object> SelectCheckInController(@RequestParam Integer pageNum, @RequestParam Integer pageSize, @RequestParam String name){
        return backService.SelectBackService(pageNum,pageSize,name);
    }
    @GetMapping("/backid")
    public Map<String,Object> SelectElderlyController(){
        return backService.SelectBackidService();
    }
    @PostMapping("/backadd")
    public Integer InsertBack(@RequestBody back1 back1)
    {
        return backService.Insertback(back1);
    }
    @PostMapping("/backapproval")
    public Integer LeaveApproval(@RequestBody back back)
    {
        return backService.BackApproval(back);
    }
    @DeleteMapping("/back/{id}")
    public Integer DeleteLeave(@PathVariable("id") Integer id)
    {
        return backService.DeleteBack(id);
    }

}

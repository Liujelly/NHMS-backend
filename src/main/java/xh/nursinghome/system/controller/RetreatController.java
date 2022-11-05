package xh.nursinghome.system.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.entity.retreat;
import xh.nursinghome.system.service.impl.RetreatService;

import java.util.Map;

@RestController
public class RetreatController {
    @Autowired
    RetreatService retreatService;
    @GetMapping("/page4")
    public Map<String,Object> SelectApprovalController(@RequestParam Integer pageNum, @RequestParam Integer pageSize,@RequestParam String name,@RequestParam String sex){
        return retreatService.SelectRetreatService(pageNum,pageSize,name,sex);
    }
    @GetMapping("/retreatid")
    public Map<String,Object> SelectElderlyController(){
        return retreatService.SelectRetreatidService();
    }
    @PostMapping("/retreatadd")
    public Integer Insertretreat(@RequestBody Integer id)
    {
        return retreatService.Insertretreat(id);
    }
    @PostMapping("/retreatedit")
    public Integer Updateretreat(@RequestBody retreat retreat)
    {
        return retreatService.UpdateretreatService(retreat);
    }
    @DeleteMapping("/retreat/{id}")
    public Integer Deleteretreat(@PathVariable Integer id)
    {
        return retreatService.DeleteretreatService(id);
    }

}

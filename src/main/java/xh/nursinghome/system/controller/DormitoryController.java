package xh.nursinghome.system.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.entity.DormDO;
import xh.nursinghome.system.model.dormitory1;
import xh.nursinghome.system.service.impl.DormitoryService;

import java.util.Map;

@RestController
public class DormitoryController {
    @Autowired
    DormitoryService dormitoryService;
    @GetMapping("/page3")
    public Map<String,Object> SelectDormitoryController(@RequestParam Integer pageNum, @RequestParam Integer pageSize,@RequestParam String state){
        return dormitoryService.SelectDormitoryService(pageNum,pageSize,state);
    }
    @GetMapping("/id")
    public Map<String,Object> SelectElderlyController(){
        return dormitoryService.SelectElderlyService();
    }
    @PostMapping("/dormitory")
    public Integer SelectDormitoryController(@RequestBody dormitory1 dormitory1){
        DormDO dormitory=new DormDO();
        dormitory.setBuildingId(dormitory1.getBuildingId());
        dormitory.setDormName(dormitory1.getDormName());
        dormitory.setBedAvailable(dormitory1.getBedAvailable());
        dormitory.setBedStatus(dormitory1.getBedStatus());
        dormitory.setDormType(dormitory1.getDormType());
        dormitory.setElderlyIds(dormitory1.getElderlyIds());
        return dormitoryService.UpdateDormitoyService(dormitory,dormitory1.getId());
    }
}

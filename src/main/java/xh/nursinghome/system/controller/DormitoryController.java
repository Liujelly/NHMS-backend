package xh.nursinghome.system.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.aop.OperationLogAnnotation;
import xh.nursinghome.system.entity.DormDO;
import xh.nursinghome.system.model.dormitory1;
import xh.nursinghome.system.service.impl.DormitoryService;

import java.util.Map;

@RestController
public class DormitoryController {
    @Autowired
    DormitoryService dormitoryService;
    @GetMapping("/page3")
    @OperationLogAnnotation(operModul = "老人管理-宿舍管理-入住分配",operType = "查询",operDesc = "查询宿舍信息")
    public Map<String,Object> SelectDormitoryController(@RequestParam Integer pageNum, @RequestParam Integer pageSize,@RequestParam String state){
        return dormitoryService.SelectDormitoryService(pageNum,pageSize,state);
    }
    @GetMapping("/id")
    public Map<String,Object> SelectElderlyController(){
        return dormitoryService.SelectElderlyService();
    }
    @PostMapping("/dormitory")
    @OperationLogAnnotation(operModul = "老人管理-宿舍管理-入住分配",operType = "分配",operDesc = "分配宿舍")
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

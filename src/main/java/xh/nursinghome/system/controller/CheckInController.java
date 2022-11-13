package xh.nursinghome.system.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.aop.OperationLogAnnotation;
import xh.nursinghome.system.entity.checkin;
import xh.nursinghome.system.service.impl.CheckInService;

import java.util.List;
import java.util.Map;

@RestController
public class CheckInController
{
    @Autowired
    CheckInService checkInService;
    @GetMapping("/page")
    @OperationLogAnnotation(operModul = "老人管理-入住管理-老人入住信息管理",operType = "查询",operDesc = "查询老人入住信息")
    public Map<String,Object> SelectCheckInController(@RequestParam Integer pageNum, @RequestParam Integer pageSize,@RequestParam String name,@RequestParam String sex){
        return checkInService.SelectCheckInMapper(pageNum,pageSize,name,sex);
    }
    @GetMapping("/")
    public List<checkin> Select()
    {
        return checkInService.Select();
    }
    @PostMapping("/checkin")
    @OperationLogAnnotation(operModul = "老人管理-入住管理-老人入住信息管理",operType = "更新",operDesc = "更新老人入住信息")
    public Integer UpIn(@RequestBody checkin checkin){
        return checkInService.UpIn(checkin);
    }
    @DeleteMapping("/checkin/{id}")
    @OperationLogAnnotation(operModul = "老人管理-入住管理-老人入住信息管理",operType = "删除",operDesc = "删除老人入住信息")
    public Integer delete(@PathVariable("id")Integer id)
    {
        return checkInService.delete(id);
    }




}

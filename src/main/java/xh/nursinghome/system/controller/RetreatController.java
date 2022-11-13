package xh.nursinghome.system.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.aop.OperationLogAnnotation;
import xh.nursinghome.system.entity.retreat;
import xh.nursinghome.system.service.impl.RetreatService;

import java.util.Map;

@RestController
public class RetreatController {
    @Autowired
    RetreatService retreatService;
    @GetMapping("/page4")
    @OperationLogAnnotation(operModul = "老人管理-退住管理-退住信息管理",operType = "查询",operDesc = "查询退住数据")
    public Map<String,Object> SelectApprovalController(@RequestParam Integer pageNum, @RequestParam Integer pageSize,@RequestParam String name,@RequestParam String sex){
        return retreatService.SelectRetreatService(pageNum,pageSize,name,sex);
    }
    @GetMapping("/retreatid")
    public Map<String,Object> SelectElderlyController(){
        return retreatService.SelectRetreatidService();
    }
    @PostMapping("/retreatadd")
    @OperationLogAnnotation(operModul = "老人管理-退住管理-退住信息管理",operType = "增加",operDesc = "增加退住数据")
    public Integer Insertretreat(@RequestBody Integer id)
    {
        return retreatService.Insertretreat(id);
    }
    @PostMapping("/retreatedit")
    @OperationLogAnnotation(operModul = "老人管理-退住管理-退住信息管理",operType = "更新",operDesc = "更新退住数据")
    public Integer Updateretreat(@RequestBody retreat retreat)
    {
        return retreatService.UpdateretreatService(retreat);
    }
    @DeleteMapping("/retreat/{id}")
    @OperationLogAnnotation(operModul = "老人管理-退住管理-退住信息管理",operType = "删除",operDesc = "删除退住数据")
    public Integer Deleteretreat(@PathVariable Integer id)
    {
        return retreatService.DeleteretreatService(id);
    }

}

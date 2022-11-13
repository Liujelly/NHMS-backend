package xh.nursinghome.system.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.aop.OperationLogAnnotation;
import xh.nursinghome.system.dao.PatrolMapper;
import xh.nursinghome.system.entity.patrol;
import xh.nursinghome.system.service.impl.PatrolService;

import java.util.Map;

@RestController
public class patrolController {
    @Autowired
    private PatrolService patrolService;
    @Autowired
    private PatrolMapper patrolMapper;

    @OperationLogAnnotation(operModul = "接待管理-巡查信息管理",operType = "修改",operDesc = "修改巡查信息")
    @GetMapping("/pagepatrol")
    public Map<String,Object> findUsers3(Integer pageNum,Integer pageSize) {
        return patrolService.findUsers3(pageNum,pageSize);
    }
    @OperationLogAnnotation(operModul = "接待管理-巡查信息管理",operType = "新增",operDesc = "新增巡查信息")
    @PostMapping("/addpatrol")
    public Integer addedit(@RequestBody patrol patrol)
    {
        if (patrol.getpId()!=null)
        {
            return patrolMapper.update(patrol);
        }
        else{
            return patrolMapper.insert(patrol);
        }
    }
    @DeleteMapping("/deletepatrol/{pId}")
    public Integer delete(@PathVariable Integer pId)
    {
        return patrolMapper.deleteById(pId);
    }

}

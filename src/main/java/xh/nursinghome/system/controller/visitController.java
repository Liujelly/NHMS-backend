package xh.nursinghome.system.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.aop.OperationLogAnnotation;
import xh.nursinghome.system.dao.VisitMapper;
import xh.nursinghome.system.entity.visit;
import xh.nursinghome.system.service.impl.VisitService;

import java.util.Map;

@RestController
public class visitController {
    @Autowired
    private VisitService visitService;
    @Autowired
    private VisitMapper visitMapper;
    @OperationLogAnnotation(operModul = "接待管理-探访信息管理",operType = "修改",operDesc = "修改探访信息")
    @GetMapping("/pagevisit")
    public Map<String,Object> findUsers2(Integer pageNum,Integer pageSize) {
     return visitService.findUsers2(pageNum,pageSize);
    }
    @OperationLogAnnotation(operModul = "接待管理-探访信息管理",operType = "新增",operDesc = "新增探访信息")
    @PostMapping("/addvisit")
    public Integer addedit(@RequestBody visit visit)
    {
        if (visit.getvId()!=null)
        {
            return visitMapper.update(visit);
        }
        else{
            return visitMapper.insert(visit);
        }
    }
    @DeleteMapping("/deletevisit/{vId}")
    public Integer delete(@PathVariable Integer vId)
    {
        return visitMapper.deleteById(vId);
    }

}

package xh.nursinghome.system.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.entity.retreat;
import xh.nursinghome.system.service.impl.RApprovalService;

import java.util.Map;

@RestController
public class RApprovalController {
    @Autowired
    RApprovalService rApprovalService;
    @GetMapping("/page5")
    public Map<String,Object> SelectApprovalController(@RequestParam Integer pageNum, @RequestParam Integer pageSize){
        return rApprovalService.SelectRetreatService(pageNum,pageSize);
    }
    @PostMapping("/Rapproval")
    public Integer RApprovalController(@RequestBody retreat retreat){
        return rApprovalService.RApprovalService(retreat);
    }
    @DeleteMapping("/Rapproval/{id}")
    public Integer DeleteController(@PathVariable Integer id)
    {
        return rApprovalService.Delete(id);
    }

}

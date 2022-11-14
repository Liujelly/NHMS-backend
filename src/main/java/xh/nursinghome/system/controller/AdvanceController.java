package xh.nursinghome.system.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


import xh.nursinghome.system.entity.advance;
import xh.nursinghome.system.service.impl.AdvanceService;

import java.util.Map;

@RestController
public class AdvanceController {
    @Autowired
    AdvanceService advanceService;
    @GetMapping("/pageadvance")
    public Map<String,Object> SelectCheckInController(@RequestParam Integer pageNum, @RequestParam Integer pageSize, @RequestParam String name){
        return advanceService.SelectElderlyService(pageNum,pageSize,name);
    }
    @PostMapping("/advance")
    public Integer UpIn(@RequestBody advance advance){
        return advanceService.UpIn(advance);
    }
    @DeleteMapping("/advance/{id}")
    public Integer delete(@PathVariable("id")Integer id)
    {
        return advanceService.delete(id);
    }
}

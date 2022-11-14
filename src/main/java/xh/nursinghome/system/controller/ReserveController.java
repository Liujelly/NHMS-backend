package xh.nursinghome.system.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.entity.reserve;
import xh.nursinghome.system.service.impl.ReserveService;

import java.util.Map;

@RestController
public class ReserveController {
    @Autowired
    ReserveService reserveService;
    @GetMapping("/pagereserve")
    public Map<String,Object> SelectCheckInController(@RequestParam Integer pageNum, @RequestParam Integer pageSize, @RequestParam String name){
        return reserveService.SelectElderlyService(pageNum,pageSize,name);
    }
    @PostMapping("/reserve")
    public Integer UpIn(@RequestBody reserve reserve){
        return reserveService.UpIn(reserve);
    }
    @DeleteMapping("/reserve/{id}")
    public Integer delete(@PathVariable("id")Integer id)
    {
        return reserveService.delete(id);
    }
}

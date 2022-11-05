package xh.nursinghome.system.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
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
    public Map<String,Object> SelectCheckInController(@RequestParam Integer pageNum, @RequestParam Integer pageSize,@RequestParam String name,@RequestParam String sex){
        return checkInService.SelectCheckInMapper(pageNum,pageSize,name,sex);
    }
    @GetMapping("/")
    public List<checkin> Select()
    {
        return checkInService.Select();
    }
    @PostMapping("/checkin")
    public Integer UpIn(@RequestBody checkin checkin){
        return checkInService.UpIn(checkin);
    }
    @DeleteMapping("/checkin/{id}")
    public Integer delete(@PathVariable("id")Integer id)
    {
        return checkInService.delete(id);
    }




}

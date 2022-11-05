package xh.nursinghome.system.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.entity.outarchive;
import xh.nursinghome.system.service.impl.OutArchiveService;

import java.util.Map;

@RestController
public class OutArchiveController {

    @Autowired
    OutArchiveService outArchiveService;
    @GetMapping("/pageo")
    public Map<String,Object> SelectCheckInController(@RequestParam Integer pageNum, @RequestParam Integer pageSize, @RequestParam String name, @RequestParam String sex){
        return outArchiveService.SelectOutArchiveMapper(pageNum,pageSize,name,sex);
    }
    @PostMapping("/outarchive")
    public Integer outarchive(@RequestBody outarchive outarchive)
    {
        return outArchiveService.OutArchive(outarchive);
    }
}

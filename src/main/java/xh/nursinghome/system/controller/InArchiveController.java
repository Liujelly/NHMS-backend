package xh.nursinghome.system.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.entity.inarchive;
import xh.nursinghome.system.service.impl.InArchiveService;

import java.util.Map;

@RestController
public class InArchiveController {
    @Autowired
    InArchiveService inArchiveService;
    @GetMapping("/pagei")
    public Map<String,Object> SelectCheckInController(@RequestParam Integer pageNum, @RequestParam Integer pageSize, @RequestParam String name, @RequestParam String sex){
        return inArchiveService.SelectInArchiveMapper(pageNum,pageSize,name,sex);
    }

    @PostMapping("/inarchive")
    public Integer InArchive(@RequestBody inarchive inarchive)
    {
        return inArchiveService.RecallInArchive(inarchive);
    }
}

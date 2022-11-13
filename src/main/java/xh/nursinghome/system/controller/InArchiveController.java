package xh.nursinghome.system.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.aop.OperationLogAnnotation;
import xh.nursinghome.system.entity.inarchive;
import xh.nursinghome.system.service.impl.InArchiveService;

import java.util.Map;

@RestController
public class InArchiveController {
    @Autowired
    InArchiveService inArchiveService;
    @GetMapping("/pagei")
    @OperationLogAnnotation(operModul ="老人管理-档案管理-入住档案",operType = "查询",operDesc = "查询入住记录")
    public Map<String,Object> SelectCheckInController(@RequestParam Integer pageNum, @RequestParam Integer pageSize, @RequestParam String name, @RequestParam String sex){
        return inArchiveService.SelectInArchiveMapper(pageNum,pageSize,name,sex);
    }

    @PostMapping("/inarchive")
    @OperationLogAnnotation(operModul = "老人管理-档案管理-入住档案",operType = "回溯",operDesc = "回溯入住记录")
    public Integer InArchive(@RequestBody inarchive inarchive)
    {
        return inArchiveService.RecallInArchive(inarchive);
    }
}

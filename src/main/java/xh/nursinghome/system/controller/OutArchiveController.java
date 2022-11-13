package xh.nursinghome.system.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.aop.OperationLogAnnotation;
import xh.nursinghome.system.entity.outarchive;
import xh.nursinghome.system.service.impl.OutArchiveService;

import java.util.Map;

@RestController
public class OutArchiveController {

    @Autowired
    OutArchiveService outArchiveService;
    @GetMapping("/pageo")
    @OperationLogAnnotation(operModul = "老人管理-档案管理-退住档案",operType = "查询",operDesc = "查询退住记录")
    public Map<String,Object> SelectCheckInController(@RequestParam Integer pageNum, @RequestParam Integer pageSize, @RequestParam String name, @RequestParam String sex){
        return outArchiveService.SelectOutArchiveMapper(pageNum,pageSize,name,sex);
    }
    @PostMapping("/outarchive")
    @OperationLogAnnotation(operModul = "老人管理-档案管理-退住档案",operType = "回溯",operDesc = "回溯退住记录")
    public Integer outarchive(@RequestBody outarchive outarchive)
    {
        return outArchiveService.OutArchive(outarchive);
    }
}

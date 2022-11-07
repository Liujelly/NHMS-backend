package xh.nursinghome.system.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import xh.nursinghome.system.service.OperationLogService;

import java.util.Map;

@RestController
public class LogController {
    @Autowired
    private OperationLogService operationLogService;

    @GetMapping("/findAllLog")
    public Map<String,Object> findAllLog(@RequestParam Integer pageNum, @RequestParam Integer pageSize){
        return operationLogService.findAll(pageNum,pageSize);
    }

    @GetMapping("/logFindComplex")
    public Map<String,Object> logFindComplex(@RequestParam Integer pageNum, @RequestParam Integer pageSize,@RequestParam String input1,@RequestParam String input2){
        return operationLogService.findComplex(pageNum,pageSize,input1,input2);
    }
}

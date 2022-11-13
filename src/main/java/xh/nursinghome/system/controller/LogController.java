package xh.nursinghome.system.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import xh.nursinghome.system.aop.OperationLogAnnotation;
import xh.nursinghome.system.service.OperationLogService;

import java.util.Map;

@RestController
public class LogController {
    @Autowired
    private OperationLogService operationLogService;

    @OperationLogAnnotation(operModul = "资料管理-操作日志",operType = "查询",operDesc = "查询操作日志")
    @GetMapping("/findAllLog")
    public Map<String,Object> findAllLog(@RequestParam Integer pageNum, @RequestParam Integer pageSize){
        return operationLogService.findAll(pageNum,pageSize);
    }
    @OperationLogAnnotation(operModul = "资料管理-操作日志",operType = "查询",operDesc = "复合查询日志")
    @GetMapping("/logFindComplex")
    public Map<String,Object> logFindComplex(@RequestParam Integer pageNum, @RequestParam Integer pageSize,@RequestParam String input1,@RequestParam String input2){
        return operationLogService.findComplex(pageNum,pageSize,input1,input2);
    }
}

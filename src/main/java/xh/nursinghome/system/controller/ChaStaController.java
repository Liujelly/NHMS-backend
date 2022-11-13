package xh.nursinghome.system.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.aop.OperationLogAnnotation;
import xh.nursinghome.system.dao.ChangingStandardDAO;
import xh.nursinghome.system.entity.ChangingStandardDO;
import xh.nursinghome.system.service.ChaStaService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
public class ChaStaController {
    @Autowired
    private ChangingStandardDAO changingStandardDAO;
    @Autowired
    private ChaStaService chaStaService;
    @OperationLogAnnotation(operModul = "资料管理-收费标准设置",operType = "查询",operDesc = "查询收费标准")
    @GetMapping("/ChaStaFind")
    public Map<String,Object> ChaStaFind(){
        Map<String,Object> res=new HashMap<>();
        res.put("data",chaStaService.findAll());
        return res;
    }
    @OperationLogAnnotation(operModul = "资料管理-收费标准设置",operType = "更新",operDesc = "更新收费标准")
    @PostMapping("/ChaStaUpdate")
    public boolean ChaStaUpdate(@RequestBody List<ChangingStandardDO> changingStandardDOS){
        Integer count=chaStaService.update(changingStandardDOS);
        if(count==16){return true;}
        else{return false;}
    }
}

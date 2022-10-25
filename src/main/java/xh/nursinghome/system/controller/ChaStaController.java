package xh.nursinghome.system.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
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

    @GetMapping("/ChaStaFind")
    public Map<String,Object> ChaStaFind(){
        Map<String,Object> res=new HashMap<>();
        res.put("data",chaStaService.findAll());
        return res;
    }
    @PostMapping("/ChaStaUpdate")
    public boolean ChaStaUpdate(@RequestBody List<ChangingStandardDO> changingStandardDOS){
        Integer count=chaStaService.update(changingStandardDOS);
        if(count==16){return true;}
        else{return false;}
    }
}

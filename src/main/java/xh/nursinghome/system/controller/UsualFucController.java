package xh.nursinghome.system.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.entity.UsualfucDO;
import xh.nursinghome.system.service.UsualFucService;

import java.util.List;
import java.util.Map;

@RestController
public class UsualFucController {

    @Autowired
    private UsualFucService usualFucService;

    @GetMapping("/getUsualFuc")
    public Map<String,Object> getUsualFuc(){
        Map<String,Object> res=usualFucService.findByUserName();
        return res;
    }

    @PostMapping("/updateUsualFuc")
    public Boolean updateUsualFuc(@RequestBody Integer menuId){
        boolean res=usualFucService.updateUsualFuc(menuId);
        return  res;
    }
}

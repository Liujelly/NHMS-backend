package xh.nursinghome.system.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import xh.nursinghome.system.entity.Apply;
import xh.nursinghome.system.service.impl.ApplytableService;

@RestController
@RequestMapping("/applytable")
public class applytableController {
    @Autowired
    private ApplytableService applytableService;
    //新增
    @PostMapping
    public Integer save(@RequestBody Apply user){
        System.out.println(user);
        return applytableService.save(user);
    }
}

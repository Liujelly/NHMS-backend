package xh.nursinghome.system.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.aop.OperationLogAnnotation;
import xh.nursinghome.system.dao.ApplyMapper;
import xh.nursinghome.system.entity.Apply;
import xh.nursinghome.system.service.impl.ApplyService;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/apply")
public class ApplyController {

    @Autowired
    private ApplyMapper userMapper;

    @Autowired
    private ApplyService userService;

    //新增和修改
    @OperationLogAnnotation(operModul = "接待管理-申请信息管理",operType = "新增",operDesc = "新增申请信息")
    @PostMapping
    public Integer save(@RequestBody Apply user){
        System.out.println(user);
        return userService.save(user);
    }
//查询所有数据
@OperationLogAnnotation(operModul = "接待管理-申请信息管理",operType = "修改",operDesc = "新增申请信息")
    @GetMapping
    public List<Apply> index(){
        List<Apply>all= userMapper.findAll();
        return all;
    }

    @DeleteMapping("/{Aid}")
    public Integer delete(@PathVariable Integer Aid){

       return userMapper.deleteById(Aid);
    }

    //分页查询，接口路径
    @GetMapping("/page")
    public Map<String, Object> findPage(
            @RequestParam Integer pageNum,
            @RequestParam Integer pageSize,
            @RequestParam(defaultValue = "")String aname
           ){
       pageNum=(pageNum-1)*pageSize;
       aname="%"+aname+"%";
        List<Apply>data=userMapper.selectPage(pageNum,pageSize,aname);
       Integer total=userMapper.selectTotal(aname);
        Map<String, Object>res=new HashMap<>();
        res.put("data",data);
        res.put("total",total);

       return res;

    }

}

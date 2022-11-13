package xh.nursinghome.system.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.aop.OperationLogAnnotation;
import xh.nursinghome.system.entity.UserDO;
import xh.nursinghome.system.service.UserService;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@RestController
public class UserController {
    @Autowired
    private UserService userService;

    //同时查询所有角色
    @OperationLogAnnotation(operModul = "资料管理-食谱管理",operType = "查询",operDesc = "查询所有用户")
    @GetMapping("/findAllUser")
    public Map<String,Object> findAllUser(@RequestParam int pageNum,@RequestParam int pageSize){
        return userService.findAll(pageNum,pageSize);
    }

    @OperationLogAnnotation(operModul = "资料管理-食谱管理",operType = "更新",operDesc = "更新用户状态")
    @PostMapping("/updateEnabled")
    public Boolean updateEnabled(@RequestBody UserDO userDO){
        return userService.updateEnabled(userDO);
    }

    @OperationLogAnnotation(operModul = "资料管理-食谱管理",operType = "更新",operDesc = "更新用户角色")
    @PostMapping("/updateRole")
    public Boolean updateRole(@RequestBody UserDO userDO){
        return userService.updateRole(userDO);
    }

    @OperationLogAnnotation(operModul = "资料管理-食谱管理",operType = "添加",operDesc = "添加用户")
    @PostMapping("/addUser")
    public Boolean addUser(@RequestBody UserDO userDO, HttpServletRequest request){
        return userService.addUser(userDO,request);
    }

    @OperationLogAnnotation(operModul = "资料管理-食谱管理",operType = "查询",operDesc = "复合查询用户")
    @GetMapping("/userFindComplex")
    public Map<String,Object> userFindComplex(@RequestParam int pageNum,@RequestParam int pageSize,@RequestParam String input1,@RequestParam String input2){
        return userService.findComplex(pageNum,pageSize,input1,input2);
    }
}

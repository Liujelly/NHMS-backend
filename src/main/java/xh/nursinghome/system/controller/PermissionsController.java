package xh.nursinghome.system.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.aop.OperationLogAnnotation;
import xh.nursinghome.system.entity.RoleDO;
import xh.nursinghome.system.model.Menu;
import xh.nursinghome.system.model.TreeMenuKeys;
import xh.nursinghome.system.service.PermissionsService;
import xh.nursinghome.system.utils.JwtTokenUtil;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
public class PermissionsController {
    @Autowired
    private PermissionsService permissionsService;
    @GetMapping("/getMenu")
    public List<Menu> getMenu(HttpServletRequest request)throws Exception{
        String token = request.getHeader("token");
        JwtTokenUtil jwtTokenUtil=new JwtTokenUtil();
        String userName=jwtTokenUtil.getUsernameFromToken(token);
        List<Menu> menus=permissionsService.getMenu(userName);
        return menus;
    }

    @OperationLogAnnotation(operModul = "资料管理-权限管理",operType = "查询",operDesc = "查询角色")
    @GetMapping("/getRole")
    public List<RoleDO> getRole(){
        return permissionsService.getRole();
    }

    @GetMapping("/getCheckedKey")
    public List<Integer> getCheckedKey(@RequestParam int roleId){
        return permissionsService.getCheckedKey(roleId);
    }

    @OperationLogAnnotation(operModul = "资料管理-权限管理",operType = "更新",operDesc = "更新角色权限菜单")
    @PostMapping("/updateRoleMenu")
    public Boolean updateRoleMenu(@RequestBody TreeMenuKeys treeMenuKeys){
        return permissionsService.updateRoleMenu(treeMenuKeys.getRoleId(),treeMenuKeys.getSelectedMenuIds());
    }

    @OperationLogAnnotation(operModul = "资料管理-权限管理",operType = "删除",operDesc = "删除角色")
    @PostMapping("/deleteRole")
    public Boolean deleteRole(@RequestBody RoleDO roleDO){
        int roleId= roleDO.getId();
        return permissionsService.deleteRole(roleId);
    }

    @OperationLogAnnotation(operModul = "资料管理-权限管理",operType = "添加",operDesc = "添加角色")
    @PostMapping("/addRole")
    public Boolean addRole(@RequestBody RoleDO roleDO){
        if(roleDO.getName()==""||roleDO.getNameZh()==""){
            return false;
        }
        return permissionsService.addRole(roleDO);
    }

}

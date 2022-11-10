package xh.nursinghome.system.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.*;
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
    @GetMapping("/getRole")
    public List<RoleDO> getRole(){
        return permissionsService.getRole();
    }

    @GetMapping("/getCheckedKey")
    public List<Integer> getCheckedKey(@RequestParam int roleId){
        return permissionsService.getCheckedKey(roleId);
    }

    @PostMapping("/updateRoleMenu")
    public Boolean updateRoleMenu(@RequestBody TreeMenuKeys treeMenuKeys){
        return permissionsService.updateRoleMenu(treeMenuKeys.getRoleId(),treeMenuKeys.getMenuIds());
    }
    @PostMapping("/deleteRole")
    public Boolean deleteRole(@RequestBody RoleDO roleDO){
        int roleId= roleDO.getId();
        return permissionsService.deleteRole(roleId);
    }
    @PostMapping("/addRole")
    public Boolean addRole(@RequestBody RoleDO roleDO){
        return permissionsService.addRole(roleDO);
    }

}

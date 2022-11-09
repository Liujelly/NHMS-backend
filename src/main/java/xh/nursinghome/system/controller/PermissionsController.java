package xh.nursinghome.system.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import xh.nursinghome.system.module.Menu;
import xh.nursinghome.system.service.MenuService;

import java.util.List;

@RestController
public class PermissionsController {
    @Autowired
    private MenuService menuService;

    @GetMapping("/getMenu")
    public List<Menu> getMenu(){
        List<Menu> menus=menuService.getMenu();
        return menus;
    }
}

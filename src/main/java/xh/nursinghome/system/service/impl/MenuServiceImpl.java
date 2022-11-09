package xh.nursinghome.system.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.dao.MenuDAO;
import xh.nursinghome.system.entity.MenuDO;
import xh.nursinghome.system.module.Menu;
import xh.nursinghome.system.service.MenuService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class MenuServiceImpl implements MenuService {
    @Autowired
    private MenuDAO menuDAO;

    @Override
    public List<Menu> getMenu() {
        List<MenuDO> menuDOS=menuDAO.findAll();
        List<Menu> menus=new ArrayList<>();
        for(MenuDO menuDO:menuDOS){
            menus.add(menuDO.toMenu());
        }
        Map<Integer,Menu> menuMap=new HashMap<>();
        menuMap.put(0,new Menu());
        menus.forEach(menu -> menuMap.put(menu.getId(),menu));
        menus.forEach(menu -> {
            Menu parent=menuMap.get(menu.getParentId());
            if(parent!=null){
                if(parent.getChildren()==null){
                    parent.setChildren(new ArrayList<>());
                }
                parent.getChildren().add(menu);
            }
        });
        List<Menu> data =menuMap.get(0).getChildren();
        return data;
    }
}

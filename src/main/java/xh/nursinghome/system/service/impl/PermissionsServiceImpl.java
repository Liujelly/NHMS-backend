package xh.nursinghome.system.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.dao.MenuDAO;
import xh.nursinghome.system.dao.MenuRoleDAO;
import xh.nursinghome.system.dao.RoleDAO;
import xh.nursinghome.system.dao.UserDAO;
import xh.nursinghome.system.entity.MenuDO;
import xh.nursinghome.system.entity.RoleDO;
import xh.nursinghome.system.entity.UserDO;
import xh.nursinghome.system.model.Menu;
import xh.nursinghome.system.model.MenuRole;
import xh.nursinghome.system.service.PermissionsService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class PermissionsServiceImpl implements PermissionsService {
    @Autowired
    private MenuDAO menuDAO;
    @Autowired
    private RoleDAO roleDAO;
    @Autowired
    private MenuRoleDAO menuRoleDAO;
    @Autowired
    private UserDAO userDAO;

    @Override
    public List<Menu> getMenu(String userName) {
        UserDO userDO=userDAO.findUser(userName);
        int roleId=userDO.getRoleId();
        List<MenuRole> menuRoles=menuRoleDAO.findByRoleId(roleId);
        List<MenuDO> totalMenuDOS=menuDAO.findAll();
        List<MenuDO> bottomMenuDOS=new ArrayList<>();
        //获得底层路由集合
        for(MenuRole menuRole:menuRoles) {
            int menuId=menuRole.getMenuId();
            for(MenuDO menuDO:totalMenuDOS){
                if(menuDO.getId()==menuId){
                    bottomMenuDOS.add(menuDO);
                }
            }
        }

        List<MenuDO> middleMenuDOS=getNextMenuDOS(bottomMenuDOS,totalMenuDOS);
        List<MenuDO> finalMenuDOS=getNextMenuDOS(middleMenuDOS,totalMenuDOS);
        int len=finalMenuDOS.size();
        for(int i=0;i<len;i++){
            if(finalMenuDOS.get(i).getId()==0){
                finalMenuDOS.remove(i);
                len--;
                i--;
            }
        }

        for (int i = 0; i < finalMenuDOS.size()-1; i++) {
            int index=i;//标记第一个为待比较的数
            for (int j = i+1; j < finalMenuDOS.size(); j++) { //然后从后面遍历与第一个数比较
                if (finalMenuDOS.get(j).getId()<finalMenuDOS.get(index).getId()) {  //如果小,就交换最小值
                    index=j;//保存最小元素的下标
                }
            }
            //找到最小值后，将最小的值放到第一的位置，进行下一遍循环
            MenuDO temp=finalMenuDOS.get(index);
            finalMenuDOS.set(index,finalMenuDOS.get(i));
            finalMenuDOS.set(i,temp);
        }

        List<Menu> menus=new ArrayList<>();
        for(MenuDO menuDO:finalMenuDOS){
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
    @Override
    public List<MenuDO> getBottomMenu(String userName){
        UserDO userDO=userDAO.findUser(userName);
        int roleId=userDO.getRoleId();
        List<MenuRole> menuRoles=menuRoleDAO.findByRoleId(roleId);
        List<MenuDO> totalMenuDOS=menuDAO.findAll();
        List<MenuDO> bottomMenuDOS=new ArrayList<>();
        for(MenuRole menuRole:menuRoles) {
            int menuId=menuRole.getMenuId();
            for(MenuDO menuDO:totalMenuDOS){
                if(menuDO.getId()==menuId){
                    bottomMenuDOS.add(menuDO);
                }
            }
        }

        return bottomMenuDOS;

    }
    @Override
    public List<RoleDO> getRole(){
        List<RoleDO> roleDOS=roleDAO.findAll();
        return roleDOS;
    }

    @Override
    public List<Integer> getCheckedKey(int roleId) {
        List<MenuRole> menuRoles=menuRoleDAO.findByRoleId(roleId);
        List<Integer> checkedKeys=new ArrayList<>();
        for(MenuRole menuRole:menuRoles){
            checkedKeys.add(menuRole.getMenuId());
        }
        return checkedKeys;
    }

    @Override
    public Boolean updateRoleMenu(int roleId,List<Integer> menuIds) {
        menuRoleDAO.deleteByRoleId(roleId);
        Integer res=0;
        for(Integer menuId:menuIds){
            MenuRole menuRole=new MenuRole();
            menuRole.setMenuId(menuId);
            menuRole.setRoleId(roleId);
            res+=menuRoleDAO.insertMenuRole(menuRole);
        }
        if(res==menuIds.size()) {
            return true;
        }
        return false;
    }

    @Override
    public Boolean deleteRole(int roleId) {
        Integer res=roleDAO.deleteById(roleId);
        menuRoleDAO.deleteByRoleId(roleId);
        if(res==1) {
            return true;
        }
        return false;
    }

    @Override
    public Boolean addRole(RoleDO roleDO) {
        Integer res=roleDAO.insertRole(roleDO);
        if(res==1){
            return true;
        }
        return false;
    }

    public List<MenuDO> getNextMenuDOS(List<MenuDO> lastMenuDOS,List<MenuDO> totalMenuDOS){
        List<MenuDO> nextMenuDOS=new ArrayList<>();
        for(int i=0;i<lastMenuDOS.size();i++){
            nextMenuDOS.add(lastMenuDOS.get(i));
        }
        for(MenuDO lastMenuDO:lastMenuDOS) {
            //循环找出上一层的parent
            int parentId=lastMenuDO.getParentId();
            MenuDO menuDO=new MenuDO();
            for(MenuDO menuDO1:totalMenuDOS){
                if(menuDO1.getId()==parentId){
                    menuDO=menuDO1;
                    break;
                }
            }

            //判断该路由是否已在集合里存在
            boolean notExist=true;
            for(MenuDO nextMenuDO:nextMenuDOS){
                if(menuDO.getId()==nextMenuDO.getId()){
                    notExist=false;
                    break;
                }
            }
            if(notExist){
                nextMenuDOS.add(menuDO);
            }
        }
        return nextMenuDOS;
    }

}

package xh.nursinghome.system.service;

import xh.nursinghome.system.entity.MenuDO;
import xh.nursinghome.system.entity.RoleDO;
import xh.nursinghome.system.model.Menu;


import java.util.List;

public interface PermissionsService {
    List<Menu> getMenu(String userName);
    List<MenuDO> getBottomMenu(String userName);
    List<RoleDO> getRole();
    List<Integer> getCheckedKey(int roleId);
    Boolean updateRoleMenu(int roleId,List<Integer> menuIds);
    Boolean deleteRole(int roleId);
    Boolean addRole(RoleDO roleDO);

}

package xh.nursinghome.system.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import xh.nursinghome.system.model.MenuRole;

import java.util.List;

@Mapper
@Repository
public interface MenuRoleDAO {
    List<MenuRole> findByRoleId(@Param("roleId") int roleId);
    Integer insertMenuRole(MenuRole menuRole);
    Integer deleteByRoleId(@Param("roleId") int roleId);

}

package xh.nursinghome.system.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import xh.nursinghome.system.entity.MenuDO;

import java.util.List;

@Mapper
@Repository
public interface MenuDAO {
    List<MenuDO> findAll();
    MenuDO findById(@Param("id") int id);
}

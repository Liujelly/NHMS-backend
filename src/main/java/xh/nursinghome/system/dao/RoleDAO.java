package xh.nursinghome.system.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import xh.nursinghome.system.entity.RoleDO;

import java.util.List;

@Mapper
@Repository
public interface RoleDAO {
    List<RoleDO> findAll();
    Integer insertRole(RoleDO roleDO);
    Integer deleteById(@Param("id") int id);
}

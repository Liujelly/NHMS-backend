package xh.nursinghome.system.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import xh.nursinghome.system.entity.UserDO;

import java.util.List;

@Mapper
@Repository
public interface UserDAO {
    UserDO findUser(@Param("userName") String userName);
    List<UserDO> findAll();
    Integer updateEnabledAndRole(UserDO userDO);
    Integer addUser(UserDO userDO);
    List<UserDO> findComplex(@Param("userName") String userName,@Param("relName")String relName);
}

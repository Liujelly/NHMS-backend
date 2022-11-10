package xh.nursinghome.system.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import xh.nursinghome.system.entity.UserDO;

@Mapper
@Repository
public interface UserDAO {
    UserDO findUser(@Param("userName") String userName);
}

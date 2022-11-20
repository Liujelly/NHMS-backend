package xh.nursinghome.system.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import xh.nursinghome.system.entity.UsualfucDO;

import java.util.List;

@Mapper
@Repository
public interface UsualfucDAO {
    List<UsualfucDO> findByUserName(@Param("userName") String userName);
    Integer insert(UsualfucDO usualfucDO);
    Integer deleteByUserName(@Param("userName") String userName);
    Integer deleteById(@Param("id") Integer id);
}

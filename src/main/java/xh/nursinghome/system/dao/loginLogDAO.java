package xh.nursinghome.system.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestBody;
import xh.nursinghome.system.entity.loginLog;

import java.util.List;

@Mapper
@Repository
public interface loginLogDAO {
    Integer insertLoginLog(loginLog loginLog);
    List<loginLog> findByAdmin(@Param("userName") String userName);
    List<loginLog> findAll();
}

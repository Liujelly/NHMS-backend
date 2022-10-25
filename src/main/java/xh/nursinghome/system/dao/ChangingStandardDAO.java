package xh.nursinghome.system.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import xh.nursinghome.system.entity.ChangingStandardDO;

import java.util.List;

@Mapper
@Repository
public interface ChangingStandardDAO {
    List<ChangingStandardDO> findAll();
    Integer update(ChangingStandardDO changingStandardDO);
}

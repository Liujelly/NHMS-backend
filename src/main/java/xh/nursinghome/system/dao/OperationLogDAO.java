package xh.nursinghome.system.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import xh.nursinghome.system.entity.OperationLogDO;

import java.util.List;

@Mapper
@Repository
public interface OperationLogDAO {
    Integer save(OperationLogDO logDO);
    List<OperationLogDO> findAll();
    List<OperationLogDO> findComplex(@Param("userCode") String userCode,@Param("model") String model);
}

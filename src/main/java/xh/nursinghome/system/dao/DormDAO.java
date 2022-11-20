package xh.nursinghome.system.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import xh.nursinghome.system.entity.DormDO;
import xh.nursinghome.system.entity.RoomDO;
import xh.nursinghome.system.entity.elderly;

import java.util.List;

@Mapper
@Repository
public interface DormDAO {
    List<DormDO> findAll();
    Integer addDorm(DormDO dormDO);
    Integer updateDorm(DormDO dormDO);
    List<DormDO> findComplex(@Param("buildingId") String buildingId,@Param("dormType") String dormType);
    Integer delete(@Param("id") int id);
    DormDO findNameById(@Param("id") int id);


}

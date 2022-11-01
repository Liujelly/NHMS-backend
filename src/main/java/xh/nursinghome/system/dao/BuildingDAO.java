package xh.nursinghome.system.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import xh.nursinghome.system.entity.BuildingDO;

import java.util.List;

@Mapper
@Repository
public interface BuildingDAO {
    List<BuildingDO> findAll();
    Integer addBuilding(BuildingDO buildingDO);
    Integer updateBuilding(BuildingDO buildingDO);
    List<BuildingDO> findComplex(@Param("buildingName") String buildingName, @Param("structure") String structure, @Param("headId") String headId);
}

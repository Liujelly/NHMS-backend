package xh.nursinghome.system.service;

import org.apache.ibatis.annotations.Param;
import xh.nursinghome.system.entity.BuildingDO;

import java.util.List;

public interface BuildingService {
    List<BuildingDO> findAll();
    Boolean addBuilding(BuildingDO buildingDO);
    Boolean updateBuilding(BuildingDO buildingDO);
    List<BuildingDO> findComplex( String buildingName, String structure, String headId);
}

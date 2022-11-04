package xh.nursinghome.system.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import xh.nursinghome.system.entity.InfrastructureDO;

import java.util.List;

@Mapper
@Repository
public interface InfrastructureDAO {
    List<InfrastructureDO> findAll();
    Integer addInfrastructure(InfrastructureDO infrastructureDO);
    Integer updateInfrastructure(InfrastructureDO infrastructureDO);
    Integer deleteInfrastructure(@Param("id") int id);
    List<InfrastructureDO> findComplex(@Param("buildingId") String buildingId,@Param("facilityType") String facilityType,@Param("facilityName") String facilityName);
}

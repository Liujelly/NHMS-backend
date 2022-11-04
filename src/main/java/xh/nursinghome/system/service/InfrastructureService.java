package xh.nursinghome.system.service;

import org.apache.ibatis.annotations.Param;
import xh.nursinghome.system.entity.InfrastructureDO;

import java.util.List;

public interface InfrastructureService {
    List<InfrastructureDO> findAll();
    boolean addInfrastructure(InfrastructureDO infrastructureDO);
    boolean updateInfrastructure(InfrastructureDO infrastructureDO);
    boolean deleteInfrastructure(List<Integer> ids);
    List<InfrastructureDO> findComplex(String buildingId,String facilityType, String facilityName);
}

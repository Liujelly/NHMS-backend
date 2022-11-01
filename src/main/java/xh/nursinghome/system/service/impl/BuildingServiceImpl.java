package xh.nursinghome.system.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.dao.BuildingDAO;
import xh.nursinghome.system.entity.BuildingDO;
import xh.nursinghome.system.service.BuildingService;

import java.text.SimpleDateFormat;
import java.util.List;

@Service
public class BuildingServiceImpl implements BuildingService {
    @Autowired
    private BuildingDAO buildingDAO;

    @Override
    public List<BuildingDO> findAll() {
        List<BuildingDO> buildingDOS=buildingDAO.findAll();
        return buildingDOS;
    }

    @Override
    public Boolean addBuilding(BuildingDO buildingDO) {
        Integer res=buildingDAO.addBuilding(buildingDO);
        if(res==1){
            return true;
        }
        return false;
    }

    @Override
    public Boolean updateBuilding(BuildingDO buildingDO) {
        Integer res=buildingDAO.updateBuilding(buildingDO);
        if(res==1){
            return true;
        }
        return false;
    }

    @Override
    public List<BuildingDO> findComplex(String buildingName, String structure, String headId) {
        List<BuildingDO> buildingDOS=buildingDAO.findComplex(buildingName,structure,headId);
        return buildingDOS;
    }
}

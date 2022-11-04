package xh.nursinghome.system.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.dao.InfrastructureDAO;
import xh.nursinghome.system.entity.InfrastructureDO;
import xh.nursinghome.system.service.InfrastructureService;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
@Service
public class InfrastructureServiceImpl implements InfrastructureService {
    @Autowired
    private InfrastructureDAO infrastructureDAO;

    @Override
    public List<InfrastructureDO> findAll() {
        List<InfrastructureDO> infrastructureDOS=infrastructureDAO.findAll();
        return infrastructureDOS;
    }

    @Override
    public boolean addInfrastructure(InfrastructureDO infrastructureDO) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String time = sdf.format(new Date());
        infrastructureDO.setStartTime(time);
        Integer res= infrastructureDAO.addInfrastructure(infrastructureDO);
        if(res==1){return true;}
        return false;
    }

    @Override
    public boolean updateInfrastructure(InfrastructureDO infrastructureDO) {
        Integer res= infrastructureDAO.updateInfrastructure(infrastructureDO);
        if(res==1){return true;}
        return false;
    }

    @Override
    public boolean deleteInfrastructure(List<Integer> ids) {
        Integer res=0;
        for(Integer id:ids) {
            res+= infrastructureDAO.deleteInfrastructure(id);
        }
        if(res==ids.size()){return true;}
        return false;
    }

    @Override
    public List<InfrastructureDO> findComplex(String buildingId, String facilityType, String facilityName) {
        List<InfrastructureDO> infrastructureDOS=infrastructureDAO.findComplex(buildingId,facilityType,facilityName);
        return infrastructureDOS;
    }
}

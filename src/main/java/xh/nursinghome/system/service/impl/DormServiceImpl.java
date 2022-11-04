package xh.nursinghome.system.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.dao.DormDAO;
import xh.nursinghome.system.entity.DormDO;
import xh.nursinghome.system.entity.RoomDO;
import xh.nursinghome.system.service.DormService;

import java.util.List;

@Service
public class DormServiceImpl implements DormService {
    @Autowired
    DormDAO dormDAO;
    @Override
    public List<DormDO> findAll() {
        List<DormDO> dormDOS=dormDAO.findAll();
        return dormDOS;
    }

    @Override
    public Boolean addDorm(DormDO dormDO) {
        Integer res=dormDAO.addDorm(dormDO);
        if(res==1){
            return true;
        }
        return false;
    }

    @Override
    public Boolean updateDorm(DormDO dormDO) {
        Integer res=dormDAO.updateDorm(dormDO);
        if(res==1){
            return true;
        }
        return false;
    }

    @Override
    public List<DormDO> findComplex(String buildingId, String dormType) {
        List<DormDO> dormDOS=dormDAO.findComplex(buildingId,dormType);
        return dormDOS;
    }

    @Override
    public boolean delete(List<Integer> ids) {
        Integer res=0;
        for(int id:ids){
            res+=dormDAO.delete(id);
        }
        if(res==ids.size()){
            return true;
        }
        return false;
    }
}

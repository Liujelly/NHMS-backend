package xh.nursinghome.system.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.dao.RoomDAO;
import xh.nursinghome.system.entity.RoomDO;
import xh.nursinghome.system.service.RoomService;

import java.util.List;

@Service
public class RoomServiceImpl implements RoomService {
    @Autowired
    private RoomDAO roomDAO;

    @Override
    public List<RoomDO> findAll() {
        List<RoomDO> roomDOS=roomDAO.findAll();
        return roomDOS;
    }

    @Override
    public Boolean addRoom(RoomDO roomDO) {
        Integer res= roomDAO.addRoom(roomDO);
        if(res==1){
            return true;
        }
        return false;
    }

    @Override
    public Boolean updateRoom(RoomDO roomDO) {
        Integer res= roomDAO.updateRoom(roomDO);
        if(res==1){
            return true;
        }
        return false;
    }

    @Override
    public List<RoomDO> findComplex(String roomName, String purpose, String buildingId) {
        List<RoomDO> roomDOS=roomDAO.findComplex(roomName,purpose,buildingId);
        return roomDOS;
    }
}

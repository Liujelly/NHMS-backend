package xh.nursinghome.system.service;

import org.apache.ibatis.annotations.Param;
import xh.nursinghome.system.entity.RoomDO;

import java.util.List;

public interface RoomService {

    List<RoomDO> findAll();
    Boolean addRoom(RoomDO roomDO);
    Boolean updateRoom(RoomDO roomDO);
    List<RoomDO> findComplex(String roomName,String purpose, String buildingId);
}

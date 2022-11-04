package xh.nursinghome.system.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import xh.nursinghome.system.entity.DishDO;
import xh.nursinghome.system.entity.RoomDO;

import java.util.List;

@Mapper
@Repository
public interface RoomDAO {
    List<RoomDO> findAll();
    Integer addRoom(RoomDO roomDO);
    Integer updateRoom(RoomDO roomDO);
    List<RoomDO> findComplex(@Param("roomName") String roomName, @Param("purpose") String purpose, @Param("buildingId") String buildingId);
}

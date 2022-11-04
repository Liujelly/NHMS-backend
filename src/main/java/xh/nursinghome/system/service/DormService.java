package xh.nursinghome.system.service;

import org.apache.ibatis.annotations.Param;
import xh.nursinghome.system.entity.DormDO;
import xh.nursinghome.system.entity.RoomDO;

import java.util.List;

public interface DormService {
    List<DormDO> findAll();
    Boolean addDorm(DormDO dormDO);
    Boolean updateDorm(DormDO dormDO);
    List<DormDO> findComplex(String buildingId,String dormType);
    boolean delete(List<Integer> ids);
}

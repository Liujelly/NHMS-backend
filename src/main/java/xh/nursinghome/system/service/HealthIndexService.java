package xh.nursinghome.system.service;

import xh.nursinghome.system.entity.HealthIndex;
import xh.nursinghome.system.entity.HealthIndexStandard;
import xh.nursinghome.system.entity.PhysicalExam;

import java.util.List;

/**
 * @author ljy
 * @create 2022-11-06 9:57
 */
public interface HealthIndexService {
    List<HealthIndex> showIndex(Integer pageNum,Integer pageSize,Integer orderId,String orderName);
    Integer selectTotal();
    Integer addHealthIndex(HealthIndex healthIndex);

    HealthIndex getHealthIndex(PhysicalExam physicalExam,HealthIndexStandard standard);
    Integer selectIndexById(Integer orderId);



}

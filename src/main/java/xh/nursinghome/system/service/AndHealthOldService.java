package xh.nursinghome.system.service;

import org.apache.ibatis.annotations.Param;
import xh.nursinghome.system.entity.PhysicalExam;

import java.util.List;

/**
 * @author ljy
 * @create 2022-11-14 22:38
 */
public interface AndHealthOldService {
    Integer selectPhyTotal();

    List<PhysicalExam> selectAllExam(@Param("pageNum") Integer pageNum, @Param("pageSize") Integer pageSize, @Param("orderId") Integer orderId, @Param("orderName") String orderName);

    String getHealthLevelNum(@Param("orderId")Integer oderId);
    String getHealthLevelSuggest(@Param("orderId")Integer oderId);
    String getDiseaseNum(@Param("orderId")Integer oderId);
    String getDiseaseSuggest(@Param("orderId")Integer oderId);
    String getOrderName(@Param("orderId")Integer oderId);

}

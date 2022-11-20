package xh.nursinghome.system.dao;

import io.swagger.models.auth.In;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import xh.nursinghome.system.entity.PhysicalExam;

import java.util.List;

/**
 * @author ljy
 * @create 2022-11-14 22:27
 */
@Mapper
@Repository
public interface AndHealthOldMapper {

    Integer selectPhyTotal();

    List<PhysicalExam> selectAllExam(@Param("pageNum") Integer pageNum, @Param("pageSize") Integer pageSize, @Param("orderId") Integer orderId, @Param("orderName") String orderName);


    String getHealthLevelNum(@Param("orderId")Integer oderId);
    String getHealthLevelSuggest(@Param("orderId")Integer oderId);
    String getDiseaseNum(@Param("orderId")Integer oderId);
    String getDiseaseSuggest(@Param("orderId")Integer oderId);
    String getOrderName(@Param("orderId")Integer oderId);

}

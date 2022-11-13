package xh.nursinghome.system.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import xh.nursinghome.system.entity.HealthIndex;

import java.util.List;

/**
 * @author ljy
 * @create 2022-11-06 9:56
 */
@Mapper
public interface HealthIndexMapper {
    List<HealthIndex> showIndex(@Param("pageNum") Integer pageNum,@Param("pageSize")  Integer pageSize,@Param("orderId")  Integer orderId,@Param("orderName")  String orderName);
    Integer addHealthIndex(HealthIndex healthIndex);
    Integer selectTotal();
    Integer selectIndexById(@Param("orderId") Integer orderId);

}

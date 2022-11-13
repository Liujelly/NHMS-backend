package xh.nursinghome.system.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import xh.nursinghome.system.entity.OrderMan;

import java.util.List;

/**
 * @author ljy
 * @create 2022-11-05 19:24
 */
@Mapper
public interface OrderManMapper {
//    public List<OrderMan> selectPage(Integer pageNum, Integer pageSize,String username,String email,String address);
    List<OrderMan> selectPage(@Param("pageNum") Integer pageNum,@Param("pageSize") Integer pageSize,@Param("orderId") Integer orderId,@Param("orderName") String orderName,@Param("orderIdCard") String orderIdCard);

    Integer selectTotal();

    Integer examStateChange(@Param("orderId") Integer orderId);
}

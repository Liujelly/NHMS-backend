package xh.nursinghome.system.service;

import xh.nursinghome.system.entity.OrderMan;

import java.util.List;

/**
 * @author ljy
 * @create 2022-11-05 19:24
 */
public interface OrderManService {
    List<OrderMan> selectPage(Integer pageNum, Integer pageSize,Integer orderId,String orderName,String orderIdCard);

    Integer selectTotal();
    Integer examStateChange(Integer orderId);
}

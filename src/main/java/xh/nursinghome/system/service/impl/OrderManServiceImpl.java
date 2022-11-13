package xh.nursinghome.system.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.entity.OrderMan;
import xh.nursinghome.system.dao.OrderManMapper;
import xh.nursinghome.system.service.OrderManService;

import java.util.List;

/**
 * @author ljy
 * @create 2022-11-05 19:24
 */
@Service
public class OrderManServiceImpl implements OrderManService {
    @Autowired
    private OrderManMapper orderManMapper;

    @Override
    public List<OrderMan> selectPage(Integer pageNum, Integer pageSize,Integer orderId,String orderName,String orderIdCard) {
        return orderManMapper.selectPage(pageNum,pageSize,orderId,orderName,orderIdCard);
    }

    @Override
    public Integer selectTotal() {
        return orderManMapper.selectTotal();
    }

    @Override
    public Integer examStateChange(Integer orderId) {
        return orderManMapper.examStateChange(orderId);
    }
}

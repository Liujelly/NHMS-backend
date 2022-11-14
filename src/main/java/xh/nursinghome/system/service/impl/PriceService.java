package xh.nursinghome.system.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.dao.PriceMapper;
import xh.nursinghome.system.entity.price;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class PriceService {
    @Autowired
    PriceMapper priceMapper;
    public Map<String,Object> SelectElderlyService(Integer pageNum, Integer pageSize, String name){
        Integer page=(pageNum-1)*pageSize;
        Integer total=priceMapper.total(name);
        List<price> data=priceMapper.SelectPrice(page,pageSize,name);
        Map<String,Object> res=new HashMap<>();
        res.put("data",data);
        res.put("total",total);
        return res;
    }
    public Integer UpIn(price price){
        if(price.getId()!=null)
        {
            return priceMapper.UpdatePrice(price);
        }
        else {
            return priceMapper.InsertPrice(price);
        }
    }
    public Integer delete(Integer id)
    {
        return priceMapper.DeletePrice(id);
    }
}

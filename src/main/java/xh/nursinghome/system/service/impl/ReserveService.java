package xh.nursinghome.system.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.dao.ReserveMapper;
import xh.nursinghome.system.entity.reserve;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ReserveService {
    @Autowired
    ReserveMapper reserveMapper;
    public Map<String,Object> SelectElderlyService(Integer pageNum, Integer pageSize, String name){
        Integer page=(pageNum-1)*pageSize;
        Integer total=reserveMapper.total(name);
        List<reserve> data=reserveMapper.SelectReserve(page,pageSize,name);
        Map<String,Object> res=new HashMap<>();
        res.put("data",data);
        res.put("total",total);
        return res;
    }
    public Integer UpIn(reserve reserve){
        if(reserve.getId()!=null)
        {
            return reserveMapper.UpdateReserve(reserve);
        }
        else {
            return reserveMapper.InsertReserve(reserve);
        }
    }
    public Integer delete(Integer id)
    {
        return reserveMapper.DeleteReserve(id);
    }
}

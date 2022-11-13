package xh.nursinghome.system.service.impl;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.dao.VisitMapper;
import xh.nursinghome.system.entity.visit;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

@Service
public class VisitService {
    @Autowired
    VisitMapper visitMapper;

    public Map<String,Object> findUsers2(Integer pageNum,Integer pageSize) {
        pageNum=(pageNum-1)*pageSize;
        List<visit> data=visitMapper.selectPage(pageNum,pageSize);
        Integer total=visitMapper.selectTotal();
        Map<String, Object> res=new HashMap<>();
        res.put("data",data);
        res.put("total",total);
        return res;
    }
}

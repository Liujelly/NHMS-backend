package xh.nursinghome.system.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.dao.PatrolMapper;
import xh.nursinghome.system.entity.patrol;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

@Service
public class PatrolService {
    @Autowired
    PatrolMapper patrolMapper;

    public Map<String,Object> findUsers3(Integer pageNum, Integer pageSize) {
        pageNum=(pageNum-1)*pageSize;
        List<patrol> data=patrolMapper.selectPage(pageNum,pageSize);
        Integer total=patrolMapper.selectTotal();
        Map<String, Object> res=new HashMap<>();
        res.put("data",data);
        res.put("total",total);
        return res;
    }
}

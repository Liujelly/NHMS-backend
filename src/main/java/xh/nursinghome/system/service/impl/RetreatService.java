package xh.nursinghome.system.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.dao.RetreatMapper;
import xh.nursinghome.system.entity.elderly;
import xh.nursinghome.system.entity.retreat;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class RetreatService {
    @Autowired
    RetreatMapper retreatMapper;
    public Map<String,Object> SelectRetreatService(Integer pageNum, Integer pageSize,String name,String sex){
        Integer page=(pageNum-1)*pageSize;
        Integer total=retreatMapper.total(name, sex);
        List<retreat> data=retreatMapper.SelectRetreat(page,pageSize,name,sex);
        Map<String,Object> res=new HashMap<>();
        res.put("data",data);
        res.put("total",total);
        return res;
    }
    public Map<String,Object> SelectRetreatidService()
    {
        List<elderly> elderlies=retreatMapper.Select();
        List<elderly> elderlies1=new ArrayList<>();
        List<elderly> elderlies2=new ArrayList<>();
        List<retreat> retreats=retreatMapper.SelectRetreat1();
        List<Integer> integers=new ArrayList<>();
        for (retreat retreat:retreats) {
            integers.add(retreat.getId());
        }
        for (elderly elderly :elderlies) {
            if(!integers.contains(elderly.getId())){
                elderlies1.add(elderly);
            }
        }
        for (elderly elderly:elderlies1)
        {
            if(elderly.getBuildingid()!=null)
            {
                elderlies2.add(elderly);
            }
        }
        Map<String,Object> res=new HashMap<>();
        res.put("data",elderlies2);
        return res;
    }
    public Integer Insertretreat(Integer ida)
    {
        elderly elderly=retreatMapper.SelectElderlyid(ida);
        retreat retreat=new retreat(elderly.getId(),elderly.getName(),elderly.getAge(),elderly.getSex(),elderly.getBuildingid(),elderly.getDormitoryid());
        return retreatMapper.Insertretreat(retreat);
    }

    public Integer UpdateretreatService(retreat retreat)
    {
        return retreatMapper.UpdateRetreat(retreat);
    }
    public Integer DeleteretreatService(Integer id){
        return retreatMapper.DeleteRetreat(id);
    }

}

package xh.nursinghome.system.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.dao.ElderlyMapper;
import xh.nursinghome.system.entity.elderly;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ElderlyService {
    @Autowired
    ElderlyMapper elderlyMapper;
    public Map<String,Object> SelectElderlyService(Integer pageNum, Integer pageSize,String name,String sex){
        Integer page=(pageNum-1)*pageSize;
        Integer total=elderlyMapper.total(name,sex);
        List<elderly> data=elderlyMapper.SelectElderly(page,pageSize,name,sex);
        Map<String,Object> res=new HashMap<>();
        res.put("data",data);
        res.put("total",total);
        return res;
    }
    public List<elderly> Select(){
        return elderlyMapper.Select();
    }
    public Integer UpIn(elderly elderly){
        if(elderly.getId()!=null)
        {
            return elderlyMapper.UpdateElderly(elderly);
        }
        else {
            return elderlyMapper.InsertElderly(elderly);
        }
    }
    public Integer delete(Integer id)
    {
        return elderlyMapper.DeleteElderly(id);
    }
    public List<elderly> list(){
        return elderlyMapper.Select();
    }

}

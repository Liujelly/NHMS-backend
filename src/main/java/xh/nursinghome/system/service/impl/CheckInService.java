package xh.nursinghome.system.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.dao.CheckInMapper;
import xh.nursinghome.system.entity.checkin;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class CheckInService
{
    @Autowired
    CheckInMapper checkInMapper;
    public Map<String,Object> SelectCheckInMapper(Integer pageNum, Integer pageSize,String name,String sex){
        Integer page=(pageNum-1)*pageSize;
        Integer total=checkInMapper.total(name, sex);List<checkin> data=checkInMapper.SelectCheckIn(page,pageSize,name,sex);
        Map<String,Object> res=new HashMap<>();
        res.put("data",data);
        res.put("total",total);
        return res;
    }
    public List<checkin> Select(){
        return checkInMapper.Select();
    }
    public Integer UpIn(checkin checkin){
        if(checkin.getId()!=null)
        {
            return checkInMapper.UpdateCheckIn(checkin);
        }
        else {
            return checkInMapper.InsertCheckIn(checkin);
        }
    }
    public Integer delete(Integer id)
    {
        return checkInMapper.DeleteCheckIn(id);
    }


}

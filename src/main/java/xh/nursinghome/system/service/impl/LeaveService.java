package xh.nursinghome.system.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.dao.LeaveMapper;
import xh.nursinghome.system.entity.elderly;
import xh.nursinghome.system.entity.leave;
import xh.nursinghome.system.model.leave1;
import xh.nursinghome.system.entity.leavearchive;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class LeaveService {
    @Autowired
    LeaveMapper leaveMapper;
    public Map<String,Object> SelectLeaveService(Integer pageNum, Integer pageSize, String name){
        Integer page=(pageNum-1)*pageSize;
        Integer total=leaveMapper.total(name);
        List<leave> data=leaveMapper.SelectLeave(page,pageSize,name);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Map<String,Object> res=new HashMap<>();
        res.put("data",data);
        res.put("total",total);
        return res;
    }
    public Map<String,Object> SelectLeaveidService()
    {
        List<elderly> elderlies=leaveMapper.Select();
        List<elderly> elderlies1=new ArrayList<>();
        List<leave> retreats=leaveMapper.SelectLeave1();
        List<Integer> integers=new ArrayList<>();
        for (leave leave:retreats) {
            integers.add(leave.getId());
        }
        for (elderly elderly :elderlies) {
            if(!integers.contains(elderly.getId())){
                elderlies1.add(elderly);
            }
        }
        Map<String,Object> res=new HashMap<>();
        res.put("data",elderlies1);
        return res;
    }
    public Integer Insertleave( leave1 leave1)
    {
        elderly elderly=leaveMapper.SelectElderlyid(leave1.getId());
        leave leave=new leave();
        leave.setId(leave1.getId());
        leave.setLtime(leave1.getLtime());
        leave.setDuration(leave1.getDuration());
        leave.setName(elderly.getName());
        leave.setTel(elderly.getTel());
        return leaveMapper.InsertLeave(leave);
    }
    public Integer LeaveApproval(leave leave)
    {
        leavearchive leavearchive=new leavearchive();
        leavearchive.setId(leave.getId());
        leavearchive.setName(leave.getName());
        leavearchive.setTel(leave.getTel());
        leavearchive.setLtime(leave.getLtime());
        leaveMapper.InsertLeaveArchive(leavearchive);
        leaveMapper.DeleteLeave(leave.getId());
        leaveMapper.UpdateElderly(leave.getId());
        return 0;
    }

    public Integer DeleteLeave(Integer id)
    {
        return  leaveMapper.DeleteLeave(id);
    }
}

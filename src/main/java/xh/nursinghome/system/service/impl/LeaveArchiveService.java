package xh.nursinghome.system.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.dao.LeaveArchiveMapper;
import xh.nursinghome.system.entity.leavearchive;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class LeaveArchiveService {
    @Autowired
    LeaveArchiveMapper leaveArchiveMapper;
    public Map<String,Object> SelectLeaveArchiveMapper(Integer pageNum, Integer pageSize, String name){
        Integer page=(pageNum-1)*pageSize;
        Integer total=leaveArchiveMapper.total(name);
        List<leavearchive> data=leaveArchiveMapper.SelectLeaveArchive(page,pageSize,name);
        Map<String,Object> res=new HashMap<>();
        res.put("data",data);
        res.put("total",total);
        return res;
    }
}

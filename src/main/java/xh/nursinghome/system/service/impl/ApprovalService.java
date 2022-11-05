package xh.nursinghome.system.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.dao.ApprovalMapper;
import xh.nursinghome.system.entity.checkin;
import xh.nursinghome.system.entity.inarchive;

import java.sql.Date;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ApprovalService
{
    @Autowired
    ApprovalMapper approvalMapper;
    public Map<String,Object> SelectApprovalMapper(Integer pageNum, Integer pageSize,String name,String sex){
        Integer page=(pageNum-1)*pageSize;
        Integer total=approvalMapper.total(name, sex);
        List<checkin> data=approvalMapper.SelectApproval(page,pageSize,name,sex);
        Map<String,Object> res=new HashMap<>();
        res.put("data",data);
        res.put("total",total);
        return res;
    }
    public Integer InsertApprovalMapper(checkin checkin)
    {
        LocalDate now = LocalDate.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        String str = formatter.format(now);
        Date date2 = Date.valueOf(str);
        inarchive inarchive=new inarchive();
        inarchive.setId(checkin.getId());
        inarchive.setName(checkin.getName());
        inarchive.setTel(checkin.getTel());
        inarchive.setAddress(checkin.getAddress());
        inarchive.setAge(checkin.getAge());
        inarchive.setSex(checkin.getSex());
        inarchive.setIatime(date2);
        approvalMapper.InsertInArchive(inarchive);
        approvalMapper.InsertApproval(checkin);
        approvalMapper.DeleteCheckIn(checkin.getId());
        return 0;
    }
    public Integer DeleteApproval(Integer id)
    {
        return approvalMapper.DeleteCheckIn((id));
    }

}

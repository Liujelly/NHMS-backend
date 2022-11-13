package xh.nursinghome.system.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.dao.RApprovalMapper;
import xh.nursinghome.system.entity.DormDO;
import xh.nursinghome.system.entity.elderly;
import xh.nursinghome.system.entity.outarchive;
import xh.nursinghome.system.entity.retreat;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class RApprovalService {
    @Autowired
    RApprovalMapper rapprovalMapper;
    public Map<String,Object> SelectRetreatService(Integer pageNum, Integer pageSize){
        Integer page=(pageNum-1)*pageSize;
        Integer total=rapprovalMapper.total();
        List<retreat> data=rapprovalMapper.SelectRetreat(page,pageSize);
        Map<String,Object> res=new HashMap<>();
        res.put("data",data);
        res.put("total",total);
        return res;
    }
    public Integer RApprovalService(retreat retreat)
    {
        DormDO dormitory=new DormDO();
        if (retreat.getBuildingid()!=null) {
             dormitory = rapprovalMapper.SelectDormitory(retreat.getBuildingid(), retreat.getDormitoryid());
        }
        Integer integer=retreat.getId();
        String str4=integer.toString();
        String str2=dormitory.getElderlyIds();
        String[] array= new String[10];
        array=str2.split("、");
        String str3=null;
        for(String a :array){
            if(!a.equals(str4)&&str3==null)
            {
                str3=a;
            } else if (!a.equals(str4)&&str3!=null) {
                str3=str3+"、"+a;
            }
        }
        if (dormitory.getBedAvailable()!=0) {
            rapprovalMapper.UpdateDormitory(retreat.getBuildingid(),retreat.getDormitoryid(),str3);
        }
        else {
            rapprovalMapper.UpdateDormitory1(retreat.getBuildingid(),retreat.getDormitoryid(),str3);
        }
        elderly elderly= rapprovalMapper.SelectElderly(retreat.getId());
        outarchive outarchive=new outarchive();
        outarchive.setId(elderly.getId());
        outarchive.setName(elderly.getName());
        outarchive.setAge(elderly.getAge());
        outarchive.setSex(elderly.getSex());
        outarchive.setTel(elderly.getTel());
        outarchive.setAddress(elderly.getAddress());
        outarchive.setIdcard(elderly.getIdcard());
        outarchive.setNation(elderly.getNation());
        outarchive.setEducation(elderly.getEducation());
        outarchive.setBuildingid(elderly.getBuildingid());
        outarchive.setDormitoryid(elderly.getDormitoryid());
        outarchive.setState(elderly.getState());
        outarchive.setDstate(elderly.getDstate());
        LocalDate now = LocalDate.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        String str = formatter.format(now);
        java.sql.Date date2 = java.sql.Date.valueOf(str);
        outarchive.setOuttime(date2);
        rapprovalMapper.InsertOutArchive(outarchive);
        rapprovalMapper.DeleteElderly(retreat.getId());
        rapprovalMapper.DeleteRetreat(retreat.getId());
        return 0;
    }
    public Integer Delete(Integer id)
    {
        return rapprovalMapper.DeleteRetreat(id);
    }
}

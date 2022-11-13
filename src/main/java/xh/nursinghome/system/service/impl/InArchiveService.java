package xh.nursinghome.system.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.dao.InArchiveMapper;
import xh.nursinghome.system.entity.DormDO;
import xh.nursinghome.system.entity.checkin;
import xh.nursinghome.system.entity.elderly;
import xh.nursinghome.system.entity.inarchive;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class InArchiveService {
    @Autowired
    InArchiveMapper inArchiveMapper;
    public Map<String,Object> SelectInArchiveMapper(Integer pageNum, Integer pageSize,String name,String sex){
        Integer page=(pageNum-1)*pageSize;
        Integer total=inArchiveMapper.total(name, sex);
        List<inarchive> data=inArchiveMapper.SelectInArchive(page,pageSize,name,sex);
        Map<String,Object> res=new HashMap<>();
        res.put("data",data);
        res.put("total",total);
        return res;
    }
    public Integer RecallInArchive(inarchive inarchive)
    {
        Integer id=inarchive.getId();
        DormDO dormitory=new DormDO(); elderly elderly=inArchiveMapper.SelectElderly(id);
        if (elderly.getBuildingid()!=null) {
            dormitory = inArchiveMapper.SelectDormitory(elderly.getBuildingid(), elderly.getDormitoryid());
        }
        Integer integer=elderly.getId();
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

        checkin checkin=new checkin();
        checkin.setId(elderly.getId());
        checkin.setName(elderly.getName());
        checkin.setAge(elderly.getAge());
        checkin.setSex(elderly.getSex());
        checkin.setTel(elderly.getTel());
        checkin.setAddress(elderly.getAddress());
        checkin.setIdcard(elderly.getIdcard());
        checkin.setNation(elderly.getNation());
        checkin.setEducation(elderly.getEducation());
        checkin.setAddress(elderly.getAddress());
        inArchiveMapper.InsertCheckIn(checkin);
        inArchiveMapper.DeleteInArchive(id);
        inArchiveMapper.DeleteElderly(id);
        return 0;
    }

}

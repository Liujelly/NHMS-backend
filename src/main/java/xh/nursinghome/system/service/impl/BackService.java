package xh.nursinghome.system.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.dao.BackMapper;
import xh.nursinghome.system.entity.back;
import xh.nursinghome.system.model.back1;
import xh.nursinghome.system.entity.elderly;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class BackService {
    @Autowired
    BackMapper backMapper;
    public Map<String,Object> SelectBackService(Integer pageNum, Integer pageSize, String name){
        Integer page=(pageNum-1)*pageSize;
        Integer total=backMapper.total(name);
        List<back> data=backMapper.SelectBack(page,pageSize,name);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Map<String,Object> res=new HashMap<>();
        res.put("data",data);
        res.put("total",total);
        return res;
    }
    public Map<String,Object> SelectBackidService()
    {
        List<elderly> elderlies=backMapper.Select();
        List<elderly> elderlies1=new ArrayList<>();
        List<back> retreats=backMapper.SelectBack1();
        List<Integer> integers=new ArrayList<>();
        for (back back:retreats) {
            integers.add(back.getId());
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
    public Integer Insertback(back1 back1)
    {
        elderly elderly=backMapper.SelectElderlyid(back1.getId());
        back back=new back();
        back.setId(back1.getId());
        back.setName(elderly.getName());
        back.setTel(elderly.getTel());
        back.setBacktime(back1.getBacktime());
        back.setState(elderly.getState());
        return backMapper.InsertBack(back);
    }
    public Integer BackApproval(back back)
    {
        backMapper.UpdateLeaveArchive(back);
        backMapper.DeleteBack(back.getId());
        backMapper.UpdateElderly(back.getId());
        return 0;
    }
    public Integer DeleteBack(Integer id)
    {
        return  backMapper.DeleteBack(id);
    }

}

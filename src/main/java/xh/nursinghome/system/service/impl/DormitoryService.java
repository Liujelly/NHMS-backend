package xh.nursinghome.system.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.dao.DormitoryMapper;
import xh.nursinghome.system.entity.DormDO;
import xh.nursinghome.system.entity.elderly;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class DormitoryService {
    @Autowired
    DormitoryMapper dormitoryMapper;
    public Map<String,Object> SelectDormitoryService(Integer pageNum, Integer pageSize,String state){
        Integer page=(pageNum-1)*pageSize;
        Integer total=dormitoryMapper.total(state);
        List<DormDO> data=dormitoryMapper.SelectDormitory(page,pageSize,state);
        Map<String,Object> res=new HashMap<>();
        res.put("data",data);
        res.put("total",total);
        return res;
    }
    public Map<String,Object> SelectElderlyService()
    {
        List<elderly> elderlies=dormitoryMapper.Select();
        List<elderly> elderlies1=new ArrayList<>();
        for (elderly elderly:elderlies)
        {
            if(elderly.getDormitoryid()==null)
            {
                elderlies1.add(elderly);
            }
        }
        Map<String,Object> res=new HashMap<>();
        res.put("data",elderlies1);
        return res;
    }
    public Integer UpdateDormitoyService(DormDO dormDO,Integer id)
    {
        elderly elderly=dormitoryMapper.SelectElderly(id);
        DormDO dormitory1=new DormDO();
        dormitory1.setBuildingId(dormDO.getBuildingId());
        dormitory1.setDormName(dormDO.getDormName());
        dormitory1.setBedAvailable(dormDO.getBedAvailable()-1);
        dormitory1.setBedStatus(dormDO.getBedStatus());
        dormitory1.setDormType(dormDO.getDormType());
        String str = Integer.toString(id);
        dormitory1.setElderlyIds(str);
        if (dormitory1.getBedAvailable()==0)
        {
            dormitoryMapper.UpdateDormitory1(dormitory1);
        }
        else if (dormDO.getElderlyIds()==null)
        {
            dormitoryMapper.UpdateDormitory2(dormitory1);
        }
        else {
            dormitoryMapper.UpdateDormitory(dormitory1);
        }
        dormitoryMapper.UpdateElderly(id,dormitory1.getBuildingId(),dormitory1.getDormName());
        return 0;

    }
}

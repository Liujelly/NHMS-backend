package xh.nursinghome.system.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.dao.AdvanceMapper;
import xh.nursinghome.system.entity.advance;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class AdvanceService {
    @Autowired
    AdvanceMapper advanceMapper;
    public Map<String,Object> SelectElderlyService(Integer pageNum, Integer pageSize, String name){
        Integer page=(pageNum-1)*pageSize;
        Integer total=advanceMapper.total(name);
        List<advance> data=advanceMapper.SelectAdvance(page,pageSize,name);
        Map<String,Object> res=new HashMap<>();
        res.put("data",data);
        res.put("total",total);
        return res;
    }
    public Integer UpIn(advance advance){
        if(advance.getId()!=null)
        {
            return advanceMapper.UpdateAdvance(advance);
        }
        else {
            return advanceMapper.InsertAdvance(advance);
        }
    }
    public Integer delete(Integer id)
    {
        return advanceMapper.DeleteAdvance(id);
    }
}

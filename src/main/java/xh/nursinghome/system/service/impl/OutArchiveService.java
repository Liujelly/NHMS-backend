package xh.nursinghome.system.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.dao.OutArchiveMapper;
import xh.nursinghome.system.entity.DormDO;
import xh.nursinghome.system.entity.outarchive;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class OutArchiveService {
    @Autowired
    OutArchiveMapper outArchiveMapper;
    public Map<String,Object> SelectOutArchiveMapper(Integer pageNum, Integer pageSize, String name, String sex){
        Integer page=(pageNum-1)*pageSize;
        Integer total=outArchiveMapper.total(name, sex);
        List<outarchive> data=outArchiveMapper.SelectOutArchive(page,pageSize,name,sex);
        Map<String,Object> res=new HashMap<>();
        res.put("data",data);
        res.put("total",total);
        return res;
    }
    public Integer OutArchive(outarchive outarchive)
    {
        Integer buildingid=outarchive.getBuildingid();
        String dormitoryid=outarchive.getDormitoryid();
        DormDO dormDO=new DormDO();
        if(buildingid!=null) {
            dormDO = outArchiveMapper.SelectDorm(buildingid, dormitoryid);
        }
        Integer id=outarchive.getId();
        String id1=id.toString();
        String str=dormDO.getElderlyIds();
        String kp=null;
        if (dormDO.getBedAvailable()==1)
        {
            kp=str+"、"+id1;

            outArchiveMapper.InsertElderly1(outarchive);
            outArchiveMapper.InsertRetreat1(outarchive);
            outArchiveMapper.DeleteOutArchive(outarchive.getId());
        }
        else if(dormDO.getBedAvailable()==0)
        {
            outArchiveMapper.InsertElderly(outarchive);
            outArchiveMapper.InsertRetreat(outarchive);
            outArchiveMapper.DeleteOutArchive(outarchive.getId());
        }
        else if(buildingid==null)
        {
            outArchiveMapper.InsertElderly(outarchive);
            outArchiveMapper.InsertRetreat(outarchive);
            outArchiveMapper.DeleteOutArchive(outarchive.getId());
        } else if (str==null)
        {
            kp=id1;

            outArchiveMapper.InsertElderly1(outarchive);
            outArchiveMapper.InsertRetreat1(outarchive);
            outArchiveMapper.DeleteOutArchive(outarchive.getId());
        } else {
            kp=str+"、"+id1;

            outArchiveMapper.InsertElderly1(outarchive);
            outArchiveMapper.InsertRetreat1(outarchive);
            outArchiveMapper.DeleteOutArchive(outarchive.getId());
        }
        return 0;
    }
}

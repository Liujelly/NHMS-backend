package xh.nursinghome.system.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.dao.InRecordMapper;
import xh.nursinghome.system.dao.MaterialMapper;
import xh.nursinghome.system.entity.InRecord;
import xh.nursinghome.system.entity.Material;

@Service
public class MaterialService {
    @Autowired
    private MaterialMapper materialMapper;
    @Autowired
    private InRecordMapper inRecordMapper;
    public int save(Material material){

            return materialMapper.insert(material);

    }
    //入库

    public int inWarehouse(Material material){
        String id=material.getmId();
        Material material1=materialMapper.findById(id);
        float num=material1.getmQuantity();
        float num2=material.getmQuantity();
        float res=num+num2;
        material.setmQuantity(res);



        return materialMapper.update(material);

    }
    //入库记录
    public int inWarehouseRecord(InRecord inRecord){

        return inRecordMapper.insert(inRecord);
    }
    //出库
    public int outWarehouse(Material material){
        String id=material.getmId();
        Material material1=materialMapper.findById(id);
        float num=material1.getmQuantity();
        float num2=material.getmQuantity();
        float res=num-num2;
        material.setmQuantity(res);
        return materialMapper.update(material);

    }

}

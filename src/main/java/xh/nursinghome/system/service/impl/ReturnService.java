package xh.nursinghome.system.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.dao.InRecordMapper;
import xh.nursinghome.system.dao.MaterialDetailMapper;
import xh.nursinghome.system.dao.MaterialMapper;
import xh.nursinghome.system.dao.ReturnMapper;
import xh.nursinghome.system.entity.InRecord;
import xh.nursinghome.system.entity.Material;
import xh.nursinghome.system.entity.MaterialDetail;
import xh.nursinghome.system.entity.Return;
import xh.nursinghome.system.utils.DateTimeUtil;

@Service
public class ReturnService {
    @Autowired
    private ReturnMapper returnMapper;
    @Autowired
    private MaterialMapper materialMapper;
    @Autowired
    private InRecordMapper inRecordMapper;
    @Autowired
    MaterialDetailMapper materialDetailMapper;
    //归还
    public int outWarehouse(Return ar){


        DateTimeUtil dateTimeUtil=new DateTimeUtil();
        String time1=dateTimeUtil.getCurrentDateTimes();
        ar.setWarehousingTime(time1);
        Integer id3=ar.getOutboundNumber();
        Return r1=returnMapper.findById(id3);
        float n1=r1.getWarehousingQuantity();
        String id=ar.getMaterialNumber();
        Material material1=materialMapper.findById(id);
        float num=material1.getmQuantity();
        float num2=ar.getWarehousingQuantity();
        float res=num+num2;
        n1=n1-num2;
        ar.setWarehousingQuantity(n1);
        //修改状态
        if(n1==0){
            ar.setmSupplier("已归还");
        }
        material1.setmQuantity(res);
        //修改库存

        Integer id1=ar.getInboundNumber();
        MaterialDetail materialDetail=materialDetailMapper.findById(id1);
        float n3=materialDetail.getWarehousingQuantity();
        n3=n3+num2;
        materialDetail.setWarehousingTime(ar.getWarehousingTime());
        materialDetail.setWarehousingQuantity(n3);

        int aaa1=materialDetailMapper.update(materialDetail);
        //出库记录
        InRecord outRecord=new InRecord();

        outRecord.setInboundNumber(ar.getInboundNumber());
        outRecord.setMaterialName(ar.getMaterialName());
        outRecord.setMaterialNumber(ar.getMaterialNumber());

        outRecord.setWarehousingTime(ar.getWarehousingTime());
        outRecord.setWarehousingQuantity(ar.getWarehousingQuantity());
        outRecord.setProductionDate(ar.getProductionDate());
        outRecord.setShelfLife(ar.getShelfLife());
        outRecord.setmSupplier(ar.getmSupplier());
        outRecord.setInOperator(ar.getInOperator());
        int aaa=inRecordMapper.insert(outRecord);


int aa2=returnMapper.update(ar);



        return materialMapper.update(material1);

    }
}

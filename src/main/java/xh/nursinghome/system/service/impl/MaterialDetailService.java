package xh.nursinghome.system.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.dao.*;
import xh.nursinghome.system.entity.*;
import xh.nursinghome.system.model.Option;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class MaterialDetailService {
    @Autowired
    private ReturnMapper returnMapper;
    @Autowired
    private MaterialMapper materialMapper;
    @Autowired
    private InRecordMapper inRecordMapper;
    @Autowired
    MaterialDetailMapper materialDetailMapper;
    @Resource
    private EmployeeMapper employeeMapper;



    public Map<String, Object> findAll() {
        Map<String,Object> res=new HashMap<>();
        List<Employeetest> recipeDOS=materialDetailMapper.findAllEmployee();
        List<Option> options=new ArrayList<>();
        for(int i=0;i< recipeDOS.size();i++){
            Option option=new Option();
            option.setValue(i);
            option.setLabel(recipeDOS.get(i).getEmployeeName());
            options.add(option);
        }
        res.put("options",options);

        return res;
    }

//    public Map<String,Object> SelectRetreatidService()
//    {
//        List<elderly> elderlies=materialDetailMapper.findEmployeeId();
//        List<elderly> elderlies1=new ArrayList<>();
//        List<elderly> elderlies2=new ArrayList<>();
//
//
//
//        for (elderly elderly :elderlies) {
//            if(!integers.contains(elderly.getId())){
//                elderlies1.add(elderly);
//            }
//        }
//        for (elderly elderly:elderlies1)
//        {
//            if(elderly.getBuildingid()!=null)
//            {
//                elderlies2.add(elderly);
//            }
//        }
//
//        Map<String,Object> res=new HashMap<>();
//        res.put("data",elderlies2);
//        return res;
//    }


    public int save(Material material){

        return materialMapper.insert(material);

    }
    //入库

    //出库记录
    public int inWarehouseRecord(InRecord inRecord){

        return inRecordMapper.insert(inRecord);
    }
    //出库
    public int outWarehouse(MaterialDetail materialDetail){
        String id=materialDetail.getMaterialNumber();
        Integer n1=materialDetail.getInboundNumber();
        MaterialDetail materialDetail1=materialDetailMapper.findById(n1);
        //生成归还表
        Return aReturn= new Return();
        aReturn.setInboundNumber(materialDetail.getInboundNumber());
        aReturn.setMaterialName(materialDetail.getMaterialName());
        aReturn.setMaterialNumber(materialDetail.getMaterialNumber());

        aReturn.setWarehousingTime(materialDetail.getWarehousingTime());
        aReturn.setWarehousingQuantity(materialDetail.getWarehousingQuantity());
        aReturn.setProductionDate(materialDetail.getProductionDate());
        aReturn.setShelfLife(materialDetail.getShelfLife());
        aReturn.setmSupplier("待归还");
        aReturn.setInOperator(materialDetail.getInOperator());

        Material material1=materialMapper.findById(id);
        //判断类型
        String aa1=material1.getmType();
        if(aa1.equals("复用品")){
            int aa2=returnMapper.insert(aReturn);
        }
        //库存变化
        float num=material1.getmQuantity();
        float num2=materialDetail.getWarehousingQuantity();
        float res=num-num2;
        float num3=materialDetail1.getWarehousingQuantity();
        float res1=num3-num2;
        material1.setmQuantity(res);
        int a=materialMapper.update(material1);
        materialDetail.setWarehousingQuantity(res1);
        return materialDetailMapper.update(materialDetail);

    }
}

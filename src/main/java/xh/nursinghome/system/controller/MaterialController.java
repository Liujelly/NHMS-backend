package xh.nursinghome.system.controller;

import cn.hutool.poi.excel.ExcelUtil;
import cn.hutool.poi.excel.ExcelWriter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.dao.InRecordMapper;
import xh.nursinghome.system.dao.MaterialDetailMapper;
import xh.nursinghome.system.dao.MaterialMapper;
import xh.nursinghome.system.entity.InRecord;
import xh.nursinghome.system.entity.Material;
import xh.nursinghome.system.entity.MaterialDetail;
import xh.nursinghome.system.entity.UseInWarehouse;
import xh.nursinghome.system.service.impl.MaterialService;
import xh.nursinghome.system.utils.DateTimeUtil;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.net.URLEncoder;
import java.util.HashMap;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/MaterialController")
public class MaterialController {
    @Autowired
    private InRecordMapper inRecordMapper;
    @Autowired
    MaterialDetailMapper materialDetailMapper;
    @Autowired
    private MaterialMapper materialMapper;
    @Autowired
    private MaterialService materialService;
    //增加
    @PostMapping("/warehouse")
    public Integer save(@RequestBody Material material){
        return materialService.save(material);
    }
    //入库
    @PostMapping("/InWarehouse")
    public Integer InWarehouse(@RequestBody UseInWarehouse useInWarehouse){


         Material material=new Material();

         material.setmId(useInWarehouse.getmId());
         material.setmName(useInWarehouse.getmName());
         material.setmSpecification(useInWarehouse.getmSpecification());
         material.setmUnit(useInWarehouse.getmUnit());
         material.setmLocation(useInWarehouse.getmLocation());
         material.setmType(useInWarehouse.getmType());

         material.setmSuppliers(useInWarehouse.getmSuppliers());
         material.setmQuantity(useInWarehouse.getmQuantity());
         material.setmLowest(useInWarehouse.getmLowest());
         material.setmHighest(useInWarehouse.getmHighest());



         //入库记录

        InRecord inRecord=new InRecord();
        DateTimeUtil dateTimeUtil=new DateTimeUtil();
        String time1=dateTimeUtil.getCurrentDateTimes();
        inRecord.setInOperator("张强");
        inRecord.setMaterialName(useInWarehouse.getmName());
        inRecord.setMaterialNumber(useInWarehouse.getmId());
        inRecord.setWarehousingTime(time1);
        inRecord.setWarehousingQuantity(useInWarehouse.getmQuantity());
        inRecord.setProductionDate(useInWarehouse.getProductionDate());

        inRecord.setShelfLife(useInWarehouse.getShelfLife());
        inRecord.setmSupplier(useInWarehouse.getmSuppliers());

//入库细节

        MaterialDetail materialDetail=new MaterialDetail();


        materialDetail.setMaterialName(useInWarehouse.getmName());
        materialDetail.setMaterialNumber(useInWarehouse.getmId());
        materialDetail.setWarehousingTime(inRecord.getWarehousingTime());
        materialDetail.setWarehousingQuantity(useInWarehouse.getmQuantity());
        materialDetail.setProductionDate(useInWarehouse.getProductionDate());
        materialDetail.setShelfLife(useInWarehouse.getShelfLife());
        materialDetail.setmSupplier(useInWarehouse.getmSuppliers());
        materialDetail.setInOperator("张强");
        int as=materialDetailMapper.insert(materialDetail);
        int ab=materialService.inWarehouse(material);
        return inRecordMapper.insert(inRecord);
    }
    //修改
    @PostMapping("/Warehouse/InWarehouse")
    public Integer updateWarehouse(@RequestBody Material material){
        return materialMapper.update(material);
    }
//    @GetMapping("/in")
//    public List<Material> index() {
//        List<Material> all=materialMapper.findAll();
//        return all;
//    }
    //物资删除
    @DeleteMapping("/{mId}")
    public Integer delete(@PathVariable String mId){
        return materialMapper.deleteBymId(mId);
    }
    //批量删除
    @PostMapping("/batch")
    public Integer deleteBatch(@RequestBody List<String> mIds){

        return materialMapper.deleteByIds(mIds);

    }
    //物资分页查询
    //limit第一个参数=(pageNum - 1)* pageSize
    // pageSize
    @GetMapping("/page")
    public Map<String,Object> findPage(@RequestParam Integer pageNum,
                                       @RequestParam Integer pageSize,
                                       @RequestParam String mName,
                                       @RequestParam String mSpecification) {
        pageNum = (pageNum - 1) * pageSize;
        mName="%"+mName+"%";
        mSpecification="%"+mSpecification+"%";
        List<Material> date=materialMapper.selectPage(pageNum, pageSize,mName,mSpecification);
        Integer total= materialMapper.SelectTotal(mName,mSpecification);
        Map<String,Object> res=new HashMap<>();
        res.put("date",date);
        res.put("total",total);
        return res;
    }

    @GetMapping("/page1")
    public Map<String,Object> findPage1(@RequestParam Integer pageNum,
                                       @RequestParam Integer pageSize,
                                       @RequestParam String mId) {
        pageNum = (pageNum - 1) * pageSize;
        List<Material> date=materialMapper.selectbyIdPage(pageNum, pageSize,mId);
        Integer total= materialMapper.SelectById(mId);
        Map<String,Object> res=new HashMap<>();
        res.put("date",date);
        res.put("total",total);
        return res;
    }
//预警
@GetMapping("/page2")
public Map<String,Object> findPage2(@RequestParam Integer pageNum,
                                   @RequestParam Integer pageSize,
                                   @RequestParam String mName,
                                   @RequestParam String mSpecification) {
    pageNum = (pageNum - 1) * pageSize;
    mName="%"+mName+"%";
    mSpecification="%"+mSpecification+"%";

    List<Material> date=materialMapper.selectPage(pageNum, pageSize,mName,mSpecification);
    Integer total= materialMapper.SelectTotal(mName,mSpecification);
    int i = 0;
    Iterator<Material> it = date.iterator();
    while ( it.hasNext() ) {
        Material str = it.next();
        float n1=str.getmLowest();
        float n2=str.getmHighest();
        float n3=str.getmQuantity();
        if ( n3<n2&&n3>n1) {
            str.toString();
            it.remove();
            total--;
        }
        i++;
    }


    Map<String,Object> res=new HashMap<>();
    res.put("date",date);
    res.put("total",total);
    return res;
}


//出库
@PostMapping("/OutWarehouse")
public Integer OutWarehouse(@RequestBody Material material){
    return materialService.outWarehouse(material);
}

//
//库存管理
//导出
    @GetMapping("/export")
    public void export(HttpServletResponse response)throws Exception{
        //从数据库查询出所有数据
        List<Material> list=materialMapper.findAll();
        //通过工具类创建writer
        ExcelWriter writer = ExcelUtil.getWriter(true);
//通过构造方法创建writer
//ExcelWriter writer = new ExcelWriter("d:/writeTest.xls");
        writer.addHeaderAlias("mId","物资编号");
        writer.addHeaderAlias("mName","物资名称");
        writer.addHeaderAlias("mSpecification","物资规格");
        writer.addHeaderAlias("mUnit","物资单位");
        writer.addHeaderAlias("mType","物资类型");
        writer.addHeaderAlias("mLocation","存放地址");
        writer.addHeaderAlias("mQuantity","物资编号");
        writer.addHeaderAlias("mSuppliers","供应商");
        writer.addHeaderAlias("mHighest","预警最高值");
        writer.addHeaderAlias("mLowest","预警最低值");

        //一次性写出list内对象到excel
writer.write(list,true);
//设置浏览器响应的格式
response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetm1.sheet;charset=utf-8");
String fileName= URLEncoder.encode("物资库存","UTF-8");
        response.setHeader("Content-Disposition", "attachment;filename=" + fileName+".xlsx");

        ServletOutputStream out=response.getOutputStream();
        writer.flush(out,true);
        out.close();
        writer.close();
    }


}



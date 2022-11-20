package xh.nursinghome.system.controller;

import cn.hutool.poi.excel.ExcelUtil;
import cn.hutool.poi.excel.ExcelWriter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.dao.InRecordMapper;
import xh.nursinghome.system.dao.MaterialDetailMapper;
import xh.nursinghome.system.dao.OutRecordMapper;
import xh.nursinghome.system.entity.MaterialDetail;
import xh.nursinghome.system.entity.OutRecord;
import xh.nursinghome.system.service.impl.MaterialDetailService;
import xh.nursinghome.system.utils.DateTimeUtil;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController

public class MaterialDetailController {
    @Autowired
    private InRecordMapper inRecordMapper;
@Autowired
private OutRecordMapper outRecordMapper;
    @Autowired
    private MaterialDetailMapper materialDetailMapper;
    @Autowired
    private MaterialDetailService materialDetailService;


    //员工
    @GetMapping("/findEmployee")
    public Map<String,Object> findRecipe(){
        Map<String,Object> res=materialDetailService.findAll();
        return res;
    }

    //增加
//    @PostMapping("/warehouse")
//    public Integer save(@RequestBody Material material){
//        return materialDetailService.save(material);
//    }
    //出库
    @PostMapping("/MaterialDetail/InWarehouse")
    public Integer InWarehouse(@RequestBody MaterialDetail  materialDetail){



        //出库记录
        OutRecord outRecord=new OutRecord();
        DateTimeUtil dateTimeUtil=new DateTimeUtil();
        String time1=dateTimeUtil.getCurrentDateTimes();
        outRecord.setInboundNumber(materialDetail.getInboundNumber());
        outRecord.setMaterialName(materialDetail.getMaterialName());
        outRecord.setMaterialNumber(materialDetail.getMaterialNumber());

        outRecord.setWarehousingTime(time1);
        outRecord.setWarehousingQuantity(materialDetail.getWarehousingQuantity());
        outRecord.setProductionDate(materialDetail.getProductionDate());
        outRecord.setShelfLife(materialDetail.getShelfLife());
        outRecord.setmSupplier(materialDetail.getmSupplier());
        outRecord.setInOperator(materialDetail.getInOperator());
int aaa=outRecordMapper.insert(outRecord);
        return materialDetailService.outWarehouse(materialDetail);


    }
//    修改
//    @PostMapping("/MaterialDetail/InWarehouse")
//    public Integer updateWarehouse(@RequestBody MaterialDetail materialDetail){
//        return materialDetailMapper.update(materialDetail);
//    }
    @GetMapping("/MaterialDetail/in")
    public List<MaterialDetail> index() {
        List<MaterialDetail> all=materialDetailMapper.findAll();
        return all;
    }
    //物资删除
    @DeleteMapping("/MaterialDetail/{inboundNumber}")
    public Integer delete(@PathVariable Integer inboundNumber){
        return materialDetailMapper.deleteBymId(inboundNumber);
    }
    //批量删除
    @PostMapping("/MaterialDetail/batch")
    public Integer deleteBatch(@RequestBody List<Integer> mIds){

        return materialDetailMapper.deleteByIds(mIds);

    }
    //物资分页查询
    //limit第一个参数=(pageNum - 1)* pageSize
    // pageSize
    //物资分页查询
    //limit第一个参数=(pageNum - 1)* pageSize
    // pageSize
    @GetMapping("/MaterialDetail/page")
    public Map<String,Object> findPage(@RequestParam Integer pageNum,
                                       @RequestParam Integer pageSize,
                                       @RequestParam String materialName,
                                       @RequestParam String inOperator) {
        pageNum = (pageNum - 1) * pageSize;
        materialName="%"+materialName+"%";
        inOperator="%"+inOperator+"%";
        List<MaterialDetail> date=materialDetailMapper.selectPage(pageNum, pageSize,materialName,inOperator);
        Integer total= materialDetailMapper.SelectTotal(materialName,inOperator);
        Map<String,Object> res=new HashMap<>();
        res.put("date",date);
        res.put("total",total);
        return res;
    }

    @GetMapping("/MaterialDetail/page1")
    public Map<String,Object> findPage1(@RequestParam Integer pageNum,
                                        @RequestParam Integer pageSize,
                                        @RequestParam Integer inboundNumber) {
        pageNum = (pageNum - 1) * pageSize;
        List<MaterialDetail> date=materialDetailMapper.selectbyIdPage(pageNum, pageSize,inboundNumber);
        Integer total= materialDetailMapper.SelectById(inboundNumber);
        Map<String,Object> res=new HashMap<>();
        res.put("date",date);
        res.put("total",total);
        return res;
    }
    //根据时间
    @GetMapping("/MaterialDetail/page2")
    public Map<String,Object> findPage2(@RequestParam Integer pageNum,
                                        @RequestParam Integer pageSize,
                                        @RequestParam String warehousingTime) {
        pageNum = (pageNum - 1) * pageSize;
        List<MaterialDetail> date=materialDetailMapper.selectbyTimePage(pageNum, pageSize,warehousingTime);
        Integer total= materialDetailMapper.SelectByTime(warehousingTime);
        Map<String,Object> res=new HashMap<>();
        res.put("date",date);
        res.put("total",total);
        return res;
    }


    //导出
    @GetMapping("/MaterialDetail/export")
    public void export(HttpServletResponse response)throws Exception{
        //从数据库查询出所有数据
        List<MaterialDetail> list=materialDetailMapper.findAll();
        //通过工具类创建writer
        ExcelWriter writer = ExcelUtil.getWriter(true);
//通过构造方法创建writer
//ExcelWriter writer = new ExcelWriter("d:/writeTest.xls");
        writer.addHeaderAlias("inboundNumber","入库批次");
        writer.addHeaderAlias("materialNumber","物资编号");
        writer.addHeaderAlias("materialName","物资名称");
        writer.addHeaderAlias("warehousingQuantity","入库数量");
        writer.addHeaderAlias("warehousingTime","入库时间");
        writer.addHeaderAlias("productionDate","生产日期");
        writer.addHeaderAlias("mSupplier","供应商");
        writer.addHeaderAlias("shelfLife","保质期");
        writer.addHeaderAlias("inOperator","操作人");

        //一次性写出list内对象到excel
        writer.write(list,true);
//设置浏览器响应的格式
        response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetm1.sheet;charset=utf-8");
        String fileName= URLEncoder.encode("入库记录信息","UTF-8");
        response.setHeader("Content-Disposition", "attachment;filename=" + fileName+".xlsx");

        ServletOutputStream out=response.getOutputStream();
        writer.flush(out,true);
        out.close();
        writer.close();
    }
}

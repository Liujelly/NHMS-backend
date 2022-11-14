package xh.nursinghome.system.controller;

import cn.hutool.poi.excel.ExcelUtil;
import cn.hutool.poi.excel.ExcelWriter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.dao.SupplierMapper;
import xh.nursinghome.system.entity.Supplier;
import xh.nursinghome.system.service.impl.SupplierService;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
public class SupplierController {
    @Autowired
    private SupplierMapper supplierMapper;
    @Autowired
    private SupplierService supplierService;
    @PostMapping("/Supplier/warehouse")
    public Integer save(@RequestBody Supplier supplier){
        return supplierService.save(supplier);
    }
    //修改

    @GetMapping("/Supplier/in")
    public List<Supplier> index() {
        List<Supplier> all=supplierMapper.findAll();
        return all;
    }
    //物资删除
    @DeleteMapping("/Supplier/{supplierNum}")
    public Integer delete(@PathVariable Integer supplierNum){
        return supplierMapper.deleteBymId(supplierNum);
    }
    //批量删除
    @PostMapping("/Supplier/batch")
    public Integer deleteBatch(@RequestBody List<Integer> supplierNums){

        return supplierMapper.supplierDeleteByIds(supplierNums);

    }
    //物资分页查询
    //limit第一个参数=(pageNum - 1)* pageSize
    // pageSize
    @GetMapping("/Supplier/page")
    public Map<String,Object> findPage(@RequestParam Integer pageNum,
                                       @RequestParam Integer pageSize,
                                       @RequestParam String supplierName,
                                       @RequestParam String supplierAddress) {
        pageNum = (pageNum - 1) * pageSize;
        supplierName="%"+supplierName+"%";
        supplierAddress="%"+supplierAddress+"%";
        List<Supplier> date=supplierMapper.selectPage(pageNum, pageSize,supplierName,supplierAddress);
        Integer total= supplierMapper.SelectTotal(supplierName,supplierAddress);
        Map<String,Object> res=new HashMap<>();
        res.put("date",date);
        res.put("total",total);
        return res;
    }

    @GetMapping("/Supplier/page1")
    public Map<String,Object> findPage1(@RequestParam Integer pageNum,
                                        @RequestParam Integer pageSize,
                                        @RequestParam Integer supplierNum) {
        pageNum = (pageNum - 1) * pageSize;
        List<Supplier> date=supplierMapper.selectbyIdPage(pageNum, pageSize,supplierNum);
        Integer total= supplierMapper.SelectById(supplierNum);
        Map<String,Object> res=new HashMap<>();
        res.put("date",date);
        res.put("total",total);
        return res;
    }


//导出
    @GetMapping("/Supplier/export")
    public void export(HttpServletResponse response)throws Exception{
        //从数据库查询出所有数据
        List<Supplier> list=supplierMapper.findAll();
        //通过工具类创建writer
        ExcelWriter writer = ExcelUtil.getWriter(true);
//通过构造方法创建writer
//ExcelWriter writer = new ExcelWriter("d:/writeTest.xls");
        writer.addHeaderAlias("supplierNum","供应商编号");
        writer.addHeaderAlias("supplierName","供应商名称");
        writer.addHeaderAlias("supplierAddress","供应商地址");
        writer.addHeaderAlias("businessScope","经营类型");
        writer.addHeaderAlias("supplierPerson","负责人");
        writer.addHeaderAlias("supplierPhone","电话");


        //一次性写出list内对象到excel
        writer.write(list,true);
//设置浏览器响应的格式
        response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetm1.sheet;charset=utf-8");
        String fileName= URLEncoder.encode("供应商信息","UTF-8");
        response.setHeader("Content-Disposition", "attachment;filename=" + fileName+".xlsx");

        ServletOutputStream out=response.getOutputStream();
        writer.flush(out,true);
        out.close();
        writer.close();
    }
}

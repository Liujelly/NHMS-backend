package xh.nursinghome.system.controller;

import cn.hutool.poi.excel.ExcelUtil;
import cn.hutool.poi.excel.ExcelWriter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.dao.InRecordMapper;
import xh.nursinghome.system.dao.ReturnMapper;
import xh.nursinghome.system.entity.Return;
import xh.nursinghome.system.service.impl.ReturnService;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
public class ReturnConrtoller {
    @Autowired
    private InRecordMapper inRecordMapper;
    @Autowired
    private ReturnMapper returnMapper;
    @Autowired
    private ReturnService returnService;


    @PostMapping("/Return/warehouse")
    public Integer save(@RequestBody Return r){
        return returnMapper.insert(r);
    }
    //归还
    @PostMapping("/Return/InWarehouse")
    public Integer InWarehouse(@RequestBody Return ar){




        return returnService.outWarehouse(ar);


    }

//删除

@DeleteMapping("/Return/{outboundNumber}")
public Integer delete(@PathVariable Integer outboundNumber){
    return returnMapper.deleteBymId(outboundNumber);
}


//
    @GetMapping("/Return/in")
    public List<Return> index() {
        List<Return> all=returnMapper.findAll();
        return all;
    }

    //物资分页查询
    //limit第一个参数=(pageNum - 1)* pageSize
    // pageSize
    @GetMapping("/Return/page")
    public Map<String,Object> findPage(@RequestParam Integer pageNum,
                                       @RequestParam Integer pageSize,
                                       @RequestParam String materialName,
                                       @RequestParam String inOperator) {
        pageNum = (pageNum - 1) * pageSize;
        materialName="%"+materialName+"%";
        inOperator="%"+inOperator+"%";
        List<Return> date=returnMapper.selectPage(pageNum, pageSize,materialName,inOperator);
        Integer total= returnMapper.SelectTotal(materialName,inOperator);
        Map<String,Object> res=new HashMap<>();
        res.put("date",date);
        res.put("total",total);
        return res;
    }

    @GetMapping("/Return/page1")
    public Map<String,Object> findPage1(@RequestParam Integer pageNum,
                                        @RequestParam Integer pageSize,
                                        @RequestParam Integer inboundNumber) {
        pageNum = (pageNum - 1) * pageSize;
        List<Return> date=returnMapper.selectbyIdPage(pageNum, pageSize,inboundNumber);
        Integer total= returnMapper.SelectById(inboundNumber);
        Map<String,Object> res=new HashMap<>();
        res.put("date",date);
        res.put("total",total);
        return res;
    }
    //根据时间
    @GetMapping("/Return/page2")
    public Map<String,Object> findPage2(@RequestParam Integer pageNum,
                                        @RequestParam Integer pageSize,
                                        @RequestParam String warehousingTime) {
        pageNum = (pageNum - 1) * pageSize;
        List<Return> date=returnMapper.selectbyTimePage(pageNum, pageSize,warehousingTime);
        Integer total= returnMapper.SelectByTime(warehousingTime);
        Map<String,Object> res=new HashMap<>();
        res.put("date",date);
        res.put("total",total);
        return res;
    }


    //导出
    @GetMapping("/Return/export")
    public void export(HttpServletResponse response)throws Exception{
        //从数据库查询出所有数据
        List<Return> list=returnMapper.findAll();
        //通过工具类创建writer
        ExcelWriter writer = ExcelUtil.getWriter(true);
//通过构造方法创建writer
//ExcelWriter writer = new ExcelWriter("d:/writeTest.xls");
        writer.addHeaderAlias("outboundNumber","出库编号");
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

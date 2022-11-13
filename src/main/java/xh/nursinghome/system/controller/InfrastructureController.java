package xh.nursinghome.system.controller;

import cn.hutool.poi.excel.ExcelUtil;
import cn.hutool.poi.excel.ExcelWriter;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.aop.OperationLogAnnotation;
import xh.nursinghome.system.entity.BuildingDO;
import xh.nursinghome.system.entity.DormDO;
import xh.nursinghome.system.entity.InfrastructureDO;
import xh.nursinghome.system.service.InfrastructureService;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
public class InfrastructureController {
    @Autowired
    private InfrastructureService infrastructureService;
    @OperationLogAnnotation(operModul = "资料管理-设施管理-基础设施管理",operType = "查询",operDesc = "查询所有宿舍")
    @GetMapping("/infrastructureFindAll")
    public Map<String,Object> infrastructureFindAll(@RequestParam Integer pageNum, @RequestParam Integer pageSize){
        Map<String,Object> res=new HashMap<>();
        Page<InfrastructureDO> page = PageHelper.startPage(pageNum, pageSize).doSelectPage(() -> infrastructureService.findAll());
        res.put("data",page.getResult());
        res.put("total",page.getTotal());
        return res;
    }
    @OperationLogAnnotation(operModul = "资料管理-设施管理-基础设施管理",operType = "查询",operDesc = "查询所有宿舍")
    @PostMapping("/infrastructureAdd")
    public boolean infrastructureAdd(@RequestBody InfrastructureDO infrastructureDO){
        List<InfrastructureDO> infrastructureDOS=infrastructureService.findAll();
        String facilityName=infrastructureDO.getFacilityName();
        for(InfrastructureDO infrastructureDO1:infrastructureDOS){
            if(infrastructureDO1.getFacilityName().equals(facilityName)){
                return false;
            }
        }
        return infrastructureService.addInfrastructure(infrastructureDO);
    }
    @OperationLogAnnotation(operModul = "资料管理-设施管理-基础设施管理",operType = "查询",operDesc = "查询基础设施")
    @PostMapping("/infrastructureUpdate")
    public boolean infrastructureUpdate(@RequestBody InfrastructureDO infrastructureDO){
        return infrastructureService.updateInfrastructure(infrastructureDO);
    }
    @OperationLogAnnotation(operModul = "资料管理-设施管理-基础设施管理",operType = "删除",operDesc = "删除基础设施")
    @PostMapping("/infrastructureDelete")
    public boolean infrastructureDelete(@RequestBody List<Integer> ids){
        boolean res=infrastructureService.deleteInfrastructure(ids);
        return res;
    }
    @OperationLogAnnotation(operModul = "资料管理-设施管理-基础设施管理",operType = "查询",operDesc = "复合查询基础设施")
    @GetMapping("/infrastructureFindComplex")
    public Map<String,Object> infrastructureFindComplex(@RequestParam Integer pageNum,@RequestParam Integer pageSize,@RequestParam String input1,@RequestParam String input2,@RequestParam String input3){
        Map<String,Object> res=new HashMap<>();
        Page<InfrastructureDO> page = PageHelper.startPage(pageNum, pageSize).doSelectPage(() -> infrastructureService.findComplex(input1,input2,input3));
        res.put("data",page.getResult());
        res.put("total",page.getTotal());
        return res;
    }

    @GetMapping("/infrastructureExport")
    public void infrastructureExport(HttpServletResponse response)throws Exception{
        List<InfrastructureDO> list=infrastructureService.findAll();
        ExcelWriter writer= ExcelUtil.getWriter(true);
        writer.addHeaderAlias("id","基础设施id");
        writer.addHeaderAlias("buildingId","楼宇id");
        writer.addHeaderAlias("facilityType","设施类型");
        writer.addHeaderAlias("facilityName","设施名称");
        writer.addHeaderAlias("startTime","启用时间");
        writer.addHeaderAlias("shelfLife","保质期");
        writer.addHeaderAlias("repairNumber","修理次数");
        writer.addHeaderAlias("status","状态");
        writer.addHeaderAlias("repairPhone","修理电话");
        writer.addHeaderAlias("location","具体位置");

        writer.write(list,true);

        response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;charset=utf-8");
        String fileName= URLEncoder.encode("基础设施数据","UTF-8");
        response.setHeader("Content-Disposition","attachment;filename="+fileName+".xlsx");

        ServletOutputStream out=response.getOutputStream();
        writer.flush(out,true);
        out.close();
        writer.close();
    }
}

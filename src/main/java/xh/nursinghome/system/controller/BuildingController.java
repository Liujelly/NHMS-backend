package xh.nursinghome.system.controller;

import cn.hutool.poi.excel.ExcelUtil;
import cn.hutool.poi.excel.ExcelWriter;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.entity.BuildingDO;
import xh.nursinghome.system.entity.DishDO;
import xh.nursinghome.system.entity.RecipeDetailDO;
import xh.nursinghome.system.service.BuildingService;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
public class BuildingController {
    @Autowired
    private BuildingService buildingService;
    
    @GetMapping("/buildingFindAll")
    public Map<String,Object> buildingFindAll(@RequestParam Integer pageNum,@RequestParam Integer pageSize){
        Map<String,Object> res=new HashMap<>();
        Page<BuildingDO> page = PageHelper.startPage(pageNum, pageSize).doSelectPage(() -> buildingService.findAll());
        res.put("data",page.getResult());
        res.put("total",page.getTotal());
        return res;
    }
    @PostMapping("/buildingAdd")
    public boolean buildingAdd(@RequestBody BuildingDO buildingDO){
        List<BuildingDO> buildingDOS=buildingService.findAll();
        String buildingName=buildingDO.getBuildingName();
        for(BuildingDO buildingDO1:buildingDOS){
            if(buildingDO1.getBuildingName().equals(buildingName)){
                return false;
            }
        }
        return buildingService.addBuilding(buildingDO);
    }
    @PostMapping("/buildingUpdate")
    public boolean buildingUpdate(@RequestBody BuildingDO buildingDO){
        return buildingService.updateBuilding(buildingDO);
    }

    @GetMapping("/buildingFindComplex")
    public Map<String,Object> buildingFindComplex(@RequestParam Integer pageNum,@RequestParam Integer pageSize,@RequestParam String input1,@RequestParam String input2,@RequestParam String input3){
        Map<String,Object> res=new HashMap<>();
        Page<BuildingDO> page = PageHelper.startPage(pageNum, pageSize).doSelectPage(() -> buildingService.findComplex(input1,input2,input3));
        res.put("data",page.getResult());
        res.put("total",page.getTotal());
        return res;
    }

    @GetMapping("/BuildingExport")
    public void BuildingExport(HttpServletResponse response)throws Exception{
        List<BuildingDO> list=buildingService.findAll();
        ExcelWriter writer= ExcelUtil.getWriter(true);
        writer.addHeaderAlias("id","楼宇id");
        writer.addHeaderAlias("headId","负责人id");
        writer.addHeaderAlias("buildingName","楼房名称");
        writer.addHeaderAlias("builder","建造商");
        writer.addHeaderAlias("completionTime","建成时间");
        writer.addHeaderAlias("area","占地面积");
        writer.addHeaderAlias("structure","房屋结构");
        writer.addHeaderAlias("floorsNumber","楼房层数");
        writer.addHeaderAlias("roomsNumber","房间数");
        writer.addHeaderAlias("repairTime","修缮次数");

        writer.write(list,true);

        response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;charset=utf-8");
        String fileName= URLEncoder.encode("楼宇数据","UTF-8");
        response.setHeader("Content-Disposition","attachment;filename="+fileName+".xlsx");

        ServletOutputStream out=response.getOutputStream();
        writer.flush(out,true);
        out.close();
        writer.close();
    }
}

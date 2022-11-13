package xh.nursinghome.system.controller;

import cn.hutool.poi.excel.ExcelUtil;
import cn.hutool.poi.excel.ExcelWriter;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.aop.OperationLogAnnotation;
import xh.nursinghome.system.entity.BuildingDO;
import xh.nursinghome.system.entity.DishDO;
import xh.nursinghome.system.entity.RecipeDetailDO;
import xh.nursinghome.system.entity.RoomDO;
import xh.nursinghome.system.service.BuildingService;
import xh.nursinghome.system.service.RoomService;

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
    @Autowired
    private RoomService roomService;

    @OperationLogAnnotation(operModul = "资料管理-设施管理-楼房管理",operType = "查询",operDesc = "查询所有楼宇信息")
    @GetMapping("/buildingFindAll")
    public Map<String,Object> buildingFindAll(@RequestParam Integer pageNum,@RequestParam Integer pageSize){
        Map<String,Object> res=new HashMap<>();
        Page<BuildingDO> page = PageHelper.startPage(pageNum, pageSize).doSelectPage(() -> buildingService.findAll());
        res.put("data",page.getResult());
        res.put("total",page.getTotal());
        return res;
    }
    @OperationLogAnnotation(operModul = "资料管理-设施管理-楼房管理",operType = "添加",operDesc = "添加楼宇信息")
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
    @OperationLogAnnotation(operModul = "资料管理-设施管理-楼房管理",operType = "更新",operDesc = "更新楼宇信息")
    @PostMapping("/buildingUpdate")
    public boolean buildingUpdate(@RequestBody BuildingDO buildingDO){
        return buildingService.updateBuilding(buildingDO);
    }
    @OperationLogAnnotation(operModul = "资料管理-设施管理-楼房管理",operType = "查询",operDesc = "复合查询楼宇信息")
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

    //以下是房间管理
    @OperationLogAnnotation(operModul = "资料管理-设施管理-楼房管理-房间管理",operType = "查询",operDesc = "查询房间信息")
    @GetMapping("/roomFindAll")
    public Map<String,Object> roomFindAll(@RequestParam Integer pageNum,@RequestParam Integer pageSize){
        Map<String,Object> res=new HashMap<>();
        Page<RoomDO> page = PageHelper.startPage(pageNum, pageSize).doSelectPage(() -> roomService.findAll());
        res.put("data",page.getResult());
        res.put("total",page.getTotal());
        return res;
    }
    @OperationLogAnnotation(operModul = "资料管理-设施管理-楼房管理-房间管理",operType = "添加",operDesc = "添加房间信息")
    @PostMapping("/roomAdd")
    public boolean roomAdd(@RequestBody RoomDO roomDO){
        List<RoomDO> roomDOS=roomService.findAll();
        String roomName=roomDO.getRoomName();
        for(RoomDO roomDO1:roomDOS){
            if(roomDO1.getRoomName().equals(roomName)){
                return false;
            }
        }
        return roomService.addRoom(roomDO);
    }

    @OperationLogAnnotation(operModul = "资料管理-设施管理-楼房管理-房间管理",operType = "更新",operDesc = "更新房间信息")
    @PostMapping("/roomUpdate")
    public boolean roomUpdate(@RequestBody RoomDO roomDO){
        return roomService.updateRoom(roomDO);
    }

    @OperationLogAnnotation(operModul = "资料管理-设施管理-楼房管理-房间管理",operType = "查询",operDesc = "复合查询房间信息")
    @GetMapping("/roomFindComplex")
    public Map<String,Object> roomFindComplex(@RequestParam Integer pageNum,@RequestParam Integer pageSize,@RequestParam String input1,@RequestParam String input2,@RequestParam String input3){
        Map<String,Object> res=new HashMap<>();
        Page<RoomDO> page = PageHelper.startPage(pageNum, pageSize).doSelectPage(() -> roomService.findComplex(input1,input2,input3));
        res.put("data",page.getResult());
        res.put("total",page.getTotal());
        return res;
    }

    @GetMapping("/roomExport")
    public void roomExport(HttpServletResponse response)throws Exception{
        List<RoomDO> list=roomService.findAll();
        ExcelWriter writer= ExcelUtil.getWriter(true);
        writer.addHeaderAlias("id","房间id");
        writer.addHeaderAlias("buildingId","楼宇id");
        writer.addHeaderAlias("roomName","房间名称");
        writer.addHeaderAlias("area","面积");
        writer.addHeaderAlias("purpose","用途");
        writer.addHeaderAlias("status","状态");

        writer.write(list,true);

        response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;charset=utf-8");
        String fileName= URLEncoder.encode("房间数据","UTF-8");
        response.setHeader("Content-Disposition","attachment;filename="+fileName+".xlsx");

        ServletOutputStream out=response.getOutputStream();
        writer.flush(out,true);
        out.close();
        writer.close();
    }
}

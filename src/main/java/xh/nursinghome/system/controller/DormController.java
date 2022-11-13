package xh.nursinghome.system.controller;

import cn.hutool.poi.excel.ExcelUtil;
import cn.hutool.poi.excel.ExcelWriter;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.aop.OperationLogAnnotation;
import xh.nursinghome.system.dao.ElderlyMapper;
import xh.nursinghome.system.entity.BuildingDO;
import xh.nursinghome.system.entity.DormDO;
import xh.nursinghome.system.entity.elderly;
import xh.nursinghome.system.service.BuildingService;
import xh.nursinghome.system.service.DormService;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
public class DormController {
    @Autowired
    private DormService dormService;
    @Autowired
    private BuildingService buildingService;
    @Autowired
    private ElderlyMapper elderlyMapper;

    @OperationLogAnnotation(operModul = "资料管理-设施管理-宿舍管理",operType = "查询",operDesc = "查询所有宿舍")
    @GetMapping("/dormFindAll")
    public Map<String,Object> dormFindAll(@RequestParam Integer pageNum, @RequestParam Integer pageSize){
        Map<String,Object> res=new HashMap<>();
        List<BuildingDO> buildingDOS=buildingService.findAll();
        List<Integer> buildingIds=new ArrayList<>();
        for(BuildingDO buildingDO:buildingDOS){
            int buildingId=buildingDO.getId();
            buildingIds.add(buildingId);
        }
        Page<DormDO> page = PageHelper.startPage(pageNum, pageSize).doSelectPage(() -> dormService.findAll());
        res.put("data",page.getResult());
        res.put("total",page.getTotal());
        res.put("buildingIds",buildingIds);
        return res;
    }
    @OperationLogAnnotation(operModul = "资料管理-设施管理-宿舍管理",operType = "新增",operDesc = "新增宿舍")
    @PostMapping("/dormAdd")
    public boolean dormAdd(@RequestBody DormDO dormDO){
        //判断楼宇id
        List<BuildingDO> buildingDOS=buildingService.findAll();
        boolean judge=true;
        for(BuildingDO buildingDO:buildingDOS){
            if(buildingDO.getId()==dormDO.getBuildingId()){
                judge=false;
            }
        }
        if(judge){
            return false;
        }
        //判断宿舍名称
        List<DormDO> dormDOS=dormService.findAll();
        String dormName=dormDO.getDormName();
        for(DormDO dormDO1:dormDOS){
            if(dormDO1.getDormName().equals(dormName)){
                return false;
            }
        }
        return dormService.addDorm(dormDO);
    }
    @OperationLogAnnotation(operModul = "资料管理-设施管理-宿舍管理",operType = "更新",operDesc = "更新宿舍信息")
    @PostMapping("/dormUpdate")
    public boolean dormUpdate(@RequestBody DormDO dormDO){
        return dormService.updateDorm(dormDO);
    }

    @OperationLogAnnotation(operModul = "设施管理-宿舍管理",operType = "查询",operDesc = "搜索宿舍")
    @GetMapping("/dormFindComplex")
    public Map<String,Object> dormFindComplex(@RequestParam Integer pageNum,@RequestParam Integer pageSize,@RequestParam String input1,@RequestParam String input2){
        Map<String,Object> res=new HashMap<>();
        Page<DormDO> page = PageHelper.startPage(pageNum, pageSize).doSelectPage(() -> dormService.findComplex(input1,input2));
        res.put("data",page.getResult());
        res.put("total",page.getTotal());
        return res;
    }
    @OperationLogAnnotation(operModul = "资料管理-设施管理-宿舍管理",operType = "删除",operDesc = "删除宿舍")
    @PostMapping("/dormDelete")
    public boolean dormDelete(@RequestBody List<Integer> ids){
        boolean res=dormService.delete(ids);

//        List<String> names=new ArrayList<>();
//        String status="未分配";
//        for(Integer id:ids){
//            String name=dormDAO.findNameById(id);
//            names.add(name);
//        }
//        List<elderly> elderlies= elderlyMapper.Select();
//        for(String name:names) {
//            for(elderly elder:elderlies){
//                if(elder.getDormitoryid()==name){
//                    elderlyMapper.UpdateElderlyDstate(status,name);
//                }
//            }
//        }
//        boolean res=dormService.delete(ids);



        return res;
    }


    @GetMapping("/DormExport")
    public void DormExport(HttpServletResponse response)throws Exception{
        List<DormDO> list=dormService.findAll();
        ExcelWriter writer= ExcelUtil.getWriter(true);
        writer.addHeaderAlias("id","宿舍id");
        writer.addHeaderAlias("buildingId","楼宇id");
        writer.addHeaderAlias("dormName","宿舍名称");
        writer.addHeaderAlias("dormType","宿舍类型");
        writer.addHeaderAlias("bedStatus","床位状态");
        writer.addHeaderAlias("bedAvailable","剩余床位");
        writer.addHeaderAlias("elderlyNames","入住老人姓名");


        writer.write(list,true);

        response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;charset=utf-8");
        String fileName= URLEncoder.encode("宿舍数据","UTF-8");
        response.setHeader("Content-Disposition","attachment;filename="+fileName+".xlsx");

        ServletOutputStream out=response.getOutputStream();
        writer.flush(out,true);
        out.close();
        writer.close();
    }
}

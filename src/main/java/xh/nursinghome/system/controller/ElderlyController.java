package xh.nursinghome.system.controller;

import cn.hutool.poi.excel.ExcelUtil;
import cn.hutool.poi.excel.ExcelWriter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.aop.OperationLogAnnotation;
import xh.nursinghome.system.entity.elderly;
import xh.nursinghome.system.service.impl.ElderlyService;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

@RestController
public class ElderlyController {
    @Autowired
    ElderlyService elderlyService;
    @GetMapping("/page2")
    @OperationLogAnnotation(operModul = "老人管理-档案管理-老人档案",operType = "查询",operDesc = "查询老人信息")
    public Map<String,Object> SelectCheckInController(@RequestParam Integer pageNum, @RequestParam Integer pageSize,@RequestParam String name,@RequestParam String sex){
        return elderlyService.SelectElderlyService(pageNum,pageSize,name,sex);
    }
    @PostMapping("/elderly")
    @OperationLogAnnotation(operModul = "老人管理-档案管理-老人档案",operType = "更新",operDesc = "更新老人信息")
    public Integer UpIn(@RequestBody elderly elderly){
        return elderlyService.UpIn(elderly);
    }
    @DeleteMapping("/elderly/{id}")
    @OperationLogAnnotation(operModul = "老人管理-档案管理-老人档案",operType = "删除",operDesc = "删除老人信息")
    public Integer delete(@PathVariable("id")Integer id)
    {
        return elderlyService.delete(id);
    }
    @GetMapping("/exportelderly")
    @OperationLogAnnotation(operModul = "老人管理-档案管理-老人档案",operType ="导出",operDesc = "导出老人信息")
    public void export(HttpServletResponse response) throws Exception {

        // 从数据库查询出所有的数据
        List<elderly> list = elderlyService.list();
        // 通过工具类创建writer 写出到磁盘路径
//        ExcelWriter writer = ExcelUtil.getWriter(filesUploadPath + "/用户信息.xlsx");
        // 在内存操作，写出到浏览器
        ExcelWriter writer = ExcelUtil.getWriter(true);
        //自定义标题别名
        writer.addHeaderAlias("id", "ID");
        writer.addHeaderAlias("name", "姓名");
        writer.addHeaderAlias("age", "年龄");
        writer.addHeaderAlias("sex", "性别");
        writer.addHeaderAlias("tel", "电话");
        writer.addHeaderAlias("address", "地址");
        writer.addHeaderAlias("idcard", "身份证号");
        writer.addHeaderAlias("nation", "民族");
        writer.addHeaderAlias("education", "学历");
        writer.addHeaderAlias("buildingid", "大楼ID");
        writer.addHeaderAlias("dormitoryid", "宿舍ID");
        writer.addHeaderAlias("state", "状态");

        // 一次性写出list内的对象到excel，使用默认样式，强制输出标题
        writer.write(list, true);

        // 设置浏览器响应的格式
        response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;charset=utf-8");
        String fileName = URLEncoder.encode("老人信息", "UTF-8");
        response.setHeader("Content-Disposition", "attachment;filename=" + fileName + ".xlsx");

        ServletOutputStream out = response.getOutputStream();
        writer.flush(out, true);
        out.close();
        writer.close();

    }

}

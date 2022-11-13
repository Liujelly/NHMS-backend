package xh.nursinghome.system.controller;


import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.constant.Constant;
import xh.nursinghome.system.entity.Dept;
import xh.nursinghome.system.service.DeptService;
import xh.nursinghome.system.utils.ResponseDateUtil;
import xh.nursinghome.system.utils.ResultBuilder;

@Api(tags = {"职位管理"})
@RestController
@RequestMapping("/dept")
public class DeptController {

    @Autowired
    private DeptService deptService;

    //@OperationLogAnnotation(operModul = "人事管理-职位管理",operType = "",operDesc = "获取所有职位")
    @PostMapping("/listAllDept")
    @RequiresPermissions("dept:list")
    @ApiOperation("获取所有职位")
    public ResponseDateUtil getAllDept(@RequestBody Dept dept) {
        return ResultBuilder.success(deptService.findListByPage(dept));
    }

    //@OperationLogAnnotation(operModul = "人事管理-职位管理",operType = "",operDesc = "获取所有职位名称")
    @PostMapping("/listAllDeptName")
    @ApiOperation("获取所有职位名称")
    public ResponseDateUtil listAllDeptName() {
        return ResultBuilder.success(deptService.getAllDept());
    }

    //@OperationLogAnnotation(operModul = "人事管理-职位管理",operType = "新增",operDesc = "添加职位")
    @PostMapping("/addDept")
    @RequiresPermissions("dept:add")
    @ApiOperation("添加职位")
    public ResponseDateUtil addDept(@RequestBody Dept dept) {
        if (deptService.add(dept) > 0) {
            return ResultBuilder.success(Constant.ADDSUCCESS);
        } else {
            return ResultBuilder.errorInfo(Constant.ADDFAILED);
        }
    }

    //@OperationLogAnnotation(operModul = "人事管理-职位管理",operType = "更新",operDesc = "更新职位信息")
    @PutMapping("/updDept")
    @RequiresPermissions("dept:upd")
    @ApiOperation("更新职位信息")
    public ResponseDateUtil updDept(@RequestBody Dept dept) {
        if (deptService.updateData(dept) > 0) {
            return ResultBuilder.success(Constant.UPDSUCCESS);
        } else {
            return ResultBuilder.errorInfo(Constant.UPDFAILED);
        }
    }

    //@OperationLogAnnotation(operModul = "人事管理-职位管理",operType = "删除",operDesc = "删除职位信息")
    @DeleteMapping("/delDept")
    @RequiresPermissions("dept:del")
    @ApiOperation("删除职位信息")
    public ResponseDateUtil delDept(@RequestParam("id") Integer id) {
        if (deptService.delete(id) > 0) {
            return ResultBuilder.success(Constant.DELSUCCESS);
        } else {
            return ResultBuilder.errorInfo(Constant.DELFAILED);
        }
    }

}

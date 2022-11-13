package xh.nursinghome.system.controller;


import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.constant.Constant;
import xh.nursinghome.system.entity.Check;
import xh.nursinghome.system.service.CheckService;
import xh.nursinghome.system.utils.ResponseDateUtil;
import xh.nursinghome.system.utils.ResultBuilder;

@Api(tags = {"考核管理"})
@RestController
@RequestMapping("/check")
public class CheckController {

    @Autowired
    private CheckService checkService;

    //@OperationLogAnnotation(operModul = "人事管理-员工考核管理",operType = "",operDesc = "获取考核信息")
    @PostMapping("/listAllCheck")
    @RequiresPermissions("check:list")
    @ApiOperation("获取全部考核信息")
    public ResponseDateUtil getAllCheck(@RequestBody Check check) {
        return ResultBuilder.success(checkService.findListByPage(check));
    }


    //@OperationLogAnnotation(operModul="人事管理-考核管理",operType="新增",operDesc="新增考核信息")
    @PostMapping("/addCheck")
    @RequiresPermissions("check:add")
    @ApiOperation("添加考核信息")
    public ResponseDateUtil addCheck(@RequestBody Check check) {
        if (checkService.add(check) > 0) {
            return ResultBuilder.success(Constant.ADDSUCCESS);
        } else {
            return ResultBuilder.errorInfo(Constant.ADDFAILED);
        }
    }

    //@OperationLogAnnotation(operModul = "人事管理-考核管理",operType = "修改",operDesc = "修改考核信息")
    @PutMapping("/updCheck")
    @RequiresPermissions("check:upd")
    @ApiOperation("更新考核信息")
    public ResponseDateUtil updCheck(@RequestBody Check check) {
        if (checkService.updateData(check) > 0) {
            return ResultBuilder.success(Constant.UPDSUCCESS);
        } else {
            return ResultBuilder.errorInfo(Constant.UPDFAILED);
        }
    }

    //@OperationLogAnnotation(operModul = "人事管理-考核管理",operType = "删除",operDesc = "删除考核信息")
    @DeleteMapping("/delCheck")
    @RequiresPermissions("check:del")
    @ApiOperation("删除考核信息")
    public ResponseDateUtil delCheck(@RequestParam("id") Integer id) {
        if (checkService.delete(id) > 0) {
            return ResultBuilder.success(Constant.DELSUCCESS);
        } else {
            return ResultBuilder.errorInfo(Constant.DELFAILED);
        }
    }

}

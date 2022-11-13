package xh.nursinghome.system.controller;



import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.constant.Constant;
import xh.nursinghome.system.entity.EmployeeAttendance;
import xh.nursinghome.system.service.EmployeeAttendanceService;
import xh.nursinghome.system.utils.ResponseDateUtil;
import xh.nursinghome.system.utils.ResultBuilder;

import javax.annotation.Resource;


@Api(tags = {"员工出勤"})
@RestController
@RequestMapping("/employeeAttendance")
public class EmployeeAttendanceController {
    @Resource
    private EmployeeAttendanceService employeeAttendanceService;

    //@OperationLogAnnotation(operModul = "人事管理-员工考勤管理",operType = "",operDesc = "获取考勤列表")
    @PostMapping("/attendances")
    @RequiresPermissions("attendance:list")
    public ResponseDateUtil pageAttendance(@RequestBody EmployeeAttendance vo) {
        return ResultBuilder.success(employeeAttendanceService.pageAttendance(vo));
    }

    //    获取考勤信息
    //@OperationLogAnnotation(operModul = "人事管理-员工考勤管理",operType = "",operDesc = "获取考勤列表")
    @PostMapping("/getAntt")
    public ResponseDateUtil getAntt(@RequestBody EmployeeAttendance vo) {
        return ResultBuilder.success(employeeAttendanceService.getAntt(vo));
    }

    //@OperationLogAnnotation(operModul = "人事管理-考勤管理",operType = "新增",operDesc = "新增考勤信息")
    @PostMapping("/attendanceAdd")
    @RequiresPermissions("attendance:add")
    @ApiOperation("添加员工出勤")
    public ResponseDateUtil addCategoryt(@RequestBody EmployeeAttendance vo) {
        Boolean aBoolean = employeeAttendanceService.addAttendance(vo);
        if (aBoolean) {
            return ResultBuilder.success();
        } else {
            return ResultBuilder.errorInfo(Constant.ADDFAILED);
        }
    }

    //@OperationLogAnnotation(operModul = "人事管理-考勤管理",operType = "",operDesc = "获取考勤统计信息")
    @GetMapping("/getAttendanceInfo")
    @ApiOperation("获取出勤统计信息")
    public ResponseDateUtil getAttendanceInfo(@RequestParam("eid") String eid, @RequestParam("mounth") String mounth) {
        return ResultBuilder.success(employeeAttendanceService.searchInfo(eid, mounth));
    }

}

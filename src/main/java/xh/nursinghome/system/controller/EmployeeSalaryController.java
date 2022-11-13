package xh.nursinghome.system.controller;


import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.constant.Constant;
import xh.nursinghome.system.entity.EmployeeSalary;
import xh.nursinghome.system.service.EmployeeSalaryService;
import xh.nursinghome.system.utils.ResponseDateUtil;
import xh.nursinghome.system.utils.ResultBuilder;

import javax.annotation.Resource;


@Api(tags = {"工资管理"})
@RestController
@RequestMapping("/employeeSalary")
public class EmployeeSalaryController {

    @Resource
    private EmployeeSalaryService employeeSalaryService;

    //@OperationLogAnnotation(operModul = "人事管理-员工工资管理",operType = "新增",operDesc = "添加工资信息")
    @PostMapping("/salary")
    @RequiresPermissions("salary:add")
    @ApiOperation("添加工资信息")
    public ResponseDateUtil addSalary(@RequestBody EmployeeSalary vo) {
        String s = employeeSalaryService.addSalary(vo);
        if (s == Constant.ADDSUCCESS) {
            return ResultBuilder.success(Constant.ADDSUCCESS);
        } else {
            return ResultBuilder.errorInfo(s);
        }
    }

    //@OperationLogAnnotation(operModul = "人事管理-员工工资管理",operType = "查看",operDesc = "查看工资信息")
    @PostMapping("/salarys")
    @RequiresPermissions("salary:list")
    @ApiOperation("查看工资信息")
    public ResponseDateUtil pageInfo(@RequestBody EmployeeSalary vo) {
        return ResultBuilder.success(employeeSalaryService.pageEmployeeSalary(vo));
    }

    //@OperationLogAnnotation(operModul = "人事管理-员工工资管理",operType = "更新",operDesc = "更新工资信息")
    @PutMapping("/salaryUpd")
    @RequiresPermissions("salary:upd")
    @ApiOperation("更新工资信息")
    public ResponseDateUtil salaryUpd(@RequestBody EmployeeSalary vo) {
        Boolean aBoolean = employeeSalaryService.updSalary(vo);
        if (aBoolean) {
            return ResultBuilder.success();
        } else {
            return ResultBuilder.errorInfo(Constant.ADDSUCCESS);
        }
    }

}

package xh.nursinghome.system.controller;


import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.constant.Constant;
import xh.nursinghome.system.entity.Employee;
import xh.nursinghome.system.service.EmployeeService;
import xh.nursinghome.system.utils.ResponseDateUtil;
import xh.nursinghome.system.utils.ResultBuilder;

@Api(tags = {"员工管理"})
@RestController
@CrossOrigin(origins = "*",maxAge = 3600)
@RequestMapping("/employee")
public class EmployeeController {

    @Autowired
    private EmployeeService employeeService;


    //@OperationLogAnnotation(operModul = "人事管理-员工信息管理",operType = "",operDesc = "获取员工列表")
    @PostMapping("/listAllEmployee")
    @RequiresPermissions("employee:list")
    public ResponseDateUtil listAllEmployee(@RequestBody Employee employee) {
        return ResultBuilder.success(employeeService.findListByPage(employee));
    }


    //@OperationLogAnnotation(operModul = "人事管理-员工信息管理",operType = "",operDesc = "获取员工信息")
    @PostMapping("/getAllEmployee")
    public ResponseDateUtil getAllEmployee(@RequestBody Employee employee) {
        return ResultBuilder.success(employeeService.getAllEmployee(employee));
    }

    //@OperationLogAnnotation(operModul = "人事管理-员工信息管理",operType = "新增",operDesc = "新增员工信息")
    @PostMapping("/addEmployee")
    @RequiresPermissions("employee:add")
    @ApiOperation("添加新员工")
    public ResponseDateUtil addEmployee(@RequestBody Employee employee) {
        if (employeeService.add(employee) > 0) {
            return ResultBuilder.success(Constant.ADDSUCCESS);
        } else {
            return ResultBuilder.errorInfo(Constant.ADDFAILED);
        }
    }

    //@OperationLogAnnotation(operModul = "人事管理-员工信息管理",operType = "修改",operDesc = "修改员工信息")
    @PutMapping("/updEmployee")
    @RequiresPermissions("employee:upd")
    @ApiOperation("更新员工信息")
    public ResponseDateUtil updEmployee(@RequestBody Employee employee) {
        if (employeeService.updateData(employee) > 0) {
            return ResultBuilder.success(Constant.UPDSUCCESS);
        } else {
            return ResultBuilder.errorInfo(Constant.UPDFAILED);
        }
    }

    //@OperationLogAnnotation(operModul = "人事管理-员工信息管理",operType = "删除",operDesc = "删除员工信息")
    @DeleteMapping("/delEmployee")
    @RequiresPermissions("employee:del")
    @ApiOperation("删除员工信息")
    public ResponseDateUtil delEmployee(@RequestParam("id") Integer id) {
        if (employeeService.delete(id) > 0) {
            return ResultBuilder.success(Constant.DELSUCCESS);
        } else {
            return ResultBuilder.errorInfo(Constant.DELFAILED);
        }
    }

    //@OperationLogAnnotation(operModul = "人事管理-员工信息管理",operType = "",operDesc = "")
    @GetMapping("/getData")
    public String getData(){
        return "123";
    }
}

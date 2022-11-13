package xh.nursinghome.system.controller;


import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.constant.Constant;
import xh.nursinghome.system.entity.Training;
import xh.nursinghome.system.service.TrainingService;
import xh.nursinghome.system.utils.ResponseDateUtil;
import xh.nursinghome.system.utils.ResultBuilder;

@Api(tags = {"员工培训"})
@RestController
@RequestMapping("/training")
public class TrainingController {
    @Autowired
    private TrainingService trainingService;

    //@OperationLogAnnotation(operModul = "人事管理-培训管理",operType = "",operDesc = "获取全部培训信息")
    @PostMapping("/listAllTraining")
    @RequiresPermissions("training:list")
    @ApiOperation("获取全部培训信息")
    public ResponseDateUtil getAllTraining(@RequestBody Training training) {
        return ResultBuilder.success(trainingService.findListByPage(training));
    }

    //@OperationLogAnnotation(operModul = "人事管理-培训管理",operType = "新增",operDesc = "添加培训信息")
    @PostMapping("/addTraining")
    @RequiresPermissions("training:add")
    @ApiOperation("添加培训信息")
    public ResponseDateUtil addTraining(@RequestBody Training training) {
        if (trainingService.add(training) > 0) {
            return ResultBuilder.success(Constant.ADDSUCCESS);
        } else {
            return ResultBuilder.errorInfo(Constant.ADDFAILED);
        }
    }

    //@OperationLogAnnotation(operModul = "人事管理-培训管理",operType = "更新",operDesc = "更新培训信息")
    @PutMapping("/updTraining")
    @RequiresPermissions("training:upd")
    @ApiOperation("更新培训信息")
    public ResponseDateUtil updTraining(@RequestBody Training training) {
        if (trainingService.updateData(training) > 0) {
            return ResultBuilder.success(Constant.UPDSUCCESS);
        } else {
            return ResultBuilder.errorInfo(Constant.UPDFAILED);
        }
    }

    //@OperationLogAnnotation(operModul = "人事管理-培训管理",operType = "删除",operDesc = "删除培训信息")
    @DeleteMapping("/delTraining")
    @RequiresPermissions("training:del")
    @ApiOperation("删除培训信息")
    public ResponseDateUtil delTraining(@RequestParam("id") Integer id) {
        if (trainingService.delete(id) > 0) {
            return ResultBuilder.success(Constant.DELSUCCESS);
        } else {
            return ResultBuilder.errorInfo(Constant.DELFAILED);
        }
    }

}

package xh.nursinghome.system.controller;


import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.constant.Constant;
import xh.nursinghome.system.entity.RewardsAndPunishments;
import xh.nursinghome.system.service.RewardsAndPunishmentsService;
import xh.nursinghome.system.utils.ResponseDateUtil;
import xh.nursinghome.system.utils.ResultBuilder;


@Api(tags = {"员工奖惩"})
@RestController
@RequestMapping("/rewards-and-punishments")
public class RewardsAndPunishmentsController {
    @Autowired
    private RewardsAndPunishmentsService rewardsAndPunishmentsService;

    //@OperationLogAnnotation(operModul = "人事管理-奖惩管理",operType = "",operDesc = "获取奖惩信息")
    @PostMapping("/listAllRewardsAndPunishments")
    @RequiresPermissions("rp:list")
    @ApiOperation("获取奖惩信息")
    public ResponseDateUtil getAllRewardsAndPunishments(@RequestBody RewardsAndPunishments rewardsAndPunishments) {
        return ResultBuilder.success(rewardsAndPunishmentsService.findListByPage(rewardsAndPunishments));
    }

    //@OperationLogAnnotation(operModul = "人事管理-奖惩管理",operType = "新增",operDesc = "添加奖惩信息")
    @PostMapping("/addRewardsAndPunishments")
    @RequiresPermissions("rp:add")
    @ApiOperation("添加奖惩信息")
    public ResponseDateUtil addRewardsAndPunishments(@RequestBody RewardsAndPunishments rewardsAndPunishments) {
        if (rewardsAndPunishmentsService.add(rewardsAndPunishments) > 0) {
            return ResultBuilder.success(Constant.ADDSUCCESS);
        } else {
            return ResultBuilder.errorInfo(Constant.ADDFAILED);
        }
    }

    //@OperationLogAnnotation(operModul = "人事管理-奖惩管理",operType = "更新",operDesc = "更新奖惩信息")
    @PutMapping("/updRewardsAndPunishments")
    @RequiresPermissions("rp:upd")
    @ApiOperation("更新奖惩信息")
    public ResponseDateUtil updRewardsAndPunishments(@RequestBody RewardsAndPunishments rewardsAndPunishments) {
        if (rewardsAndPunishmentsService.updateData(rewardsAndPunishments) > 0) {
            return ResultBuilder.success(Constant.UPDSUCCESS);
        } else {
            return ResultBuilder.errorInfo(Constant.UPDFAILED);
        }
    }

    //@OperationLogAnnotation(operModul = "人事管理-奖惩管理",operType = "删除",operDesc = "删除奖惩信息")
    @DeleteMapping("/delRewardsAndPunishments")
    @RequiresPermissions("rp:del")
    @ApiOperation("删除奖惩信息")
    public ResponseDateUtil delRewardsAndPunishments(@RequestParam("id") Integer id) {
        if (rewardsAndPunishmentsService.delete(id) > 0) {
            return ResultBuilder.success(Constant.DELSUCCESS);
        } else {
            return ResultBuilder.errorInfo(Constant.DELFAILED);
        }
    }

}

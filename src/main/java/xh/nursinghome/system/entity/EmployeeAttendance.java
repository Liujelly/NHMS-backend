package xh.nursinghome.system.entity;

import com.baomidou.mybatisplus.annotation.*;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;
import xh.nursinghome.system.utils.PageBase;

import java.io.Serializable;
import java.util.Date;

@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("sys_employee_attendance")
@ApiModel(value = "EmployeeAttendance对象", description = "出勤")
public class EmployeeAttendance extends PageBase implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "id")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "员工id")
    private Integer eid;

    @TableField(exist = false)
    @ApiModelProperty(value = "员工姓名")
    private String ename;

    @ApiModelProperty(value = "职位名称")
    private String deptName;

    @ApiModelProperty(value = "出勤情况（1正常，2迟到，3早退，4缺勤，5请假）")
    private String attendance;

    @TableField(fill = FieldFill.INSERT)
    @ApiModelProperty(value = "时间")
    private Date createTime;

    @ApiModelProperty(value = "创建人")
    private String createBy;

    @ApiModelProperty(value = "备注")
    private String remarks;

    @ApiModelProperty(value = "上班时间")
    private Date goWorkTime;

    @ApiModelProperty(value = "下班时间")
    private Date goOffWorkTime;


}

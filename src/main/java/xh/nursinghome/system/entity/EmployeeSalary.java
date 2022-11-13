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
@TableName("sys_employee_salary")
@ApiModel(value="EmployeeSalary对象", description="工资")
public class EmployeeSalary extends PageBase implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "id")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "基本工资")
    private String mustSalary;

    @ApiModelProperty(value = "全勤工资")
    private String realitySalary;

    @ApiModelProperty(value = "迟到扣款")
    private String fundAmount;

    @ApiModelProperty(value = "请假扣款")
    private String taxAmount;

    @ApiModelProperty(value = "个税")
    private String pensionAmount;

    @ApiModelProperty(value = "五险一金")
    private String injuredMount;

    @ApiModelProperty(value = "员工id")
    private Integer eid;

    @TableField(fill = FieldFill.INSERT)
    @ApiModelProperty(value = "创建时间")
    private Date createTime;

    @TableField(fill = FieldFill.INSERT_UPDATE)
    @ApiModelProperty(value = "修改时间")
    private Date updateTime;

    @ApiModelProperty(value = "创建人")
    private Integer createBy;

    @ApiModelProperty(value = "修改人")
    private Integer updateBy;

    @ApiModelProperty(value = "工资月份")
    private String salaryMonth;

    @ApiModelProperty(value = "员工姓名")
    private String employeeName;

    @ApiModelProperty(value = "合计工资")
    private String totalSalary;


}

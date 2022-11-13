package xh.nursinghome.system.entity;

import com.baomidou.mybatisplus.annotation.*;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;
import org.springframework.stereotype.Repository;
import xh.nursinghome.system.utils.PageBase;

import java.io.Serializable;
import java.util.Date;

@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("sys_employee")
@Repository
@ApiModel(value = "Employee对象", description = "")
public class Employee extends PageBase implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "id")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "员工工号")
    private String employeeId;

    @ApiModelProperty(value = "员工名称")
    private String employeeName;

    @ApiModelProperty(value = "性别")
    private String sex;

    @ApiModelProperty(value = "出生日期")
    private String birth;

    @ApiModelProperty(value = "身份证号")
    private String idNo;

    @ApiModelProperty(value = "婚姻状态（0未婚，1已婚）")
    private String maritalStatus;

    @ApiModelProperty(value = "民族")
    private String nation;

    @ApiModelProperty(value = "政治面貌")
    private String politicCountenance;

    @ApiModelProperty(value = "邮箱 ")
    private String email;

    @ApiModelProperty(value = "电话")
    private String phone;

    @ApiModelProperty(value = "地址")
    private String address;

    @ApiModelProperty(value = "职位id")
    private Integer deptId;

    @ApiModelProperty(value = "部门名称")
    @TableField(exist = false)
    private String deptName;

    @ApiModelProperty(value = "职位")
    private String positionName;

    @ApiModelProperty(value = "职称名称")
    private Integer academicTitle;

    @ApiModelProperty(value = "教育背景")
    private String educationalBackground;

    @ApiModelProperty(value = "毕业学校")
    private String school;

    @ApiModelProperty(value = "入职时间")
    private Date entryTime;

    @ApiModelProperty(value = "在职状态")
    private String status;

    @ApiModelProperty(value = "合同期")
    private String contractTerm;

    @ApiModelProperty(value = "创建时间")
    @TableField(fill = FieldFill.INSERT)
    private Date createTime;

    @TableField(fill = FieldFill.INSERT_UPDATE)
    @ApiModelProperty(value = "更新时间")
    private Date updateTime;

    @ApiModelProperty(value = "删除标识")
    private String deleted;

    @ApiModelProperty(value = "创建者")
    private Integer createBy;

    @ApiModelProperty(value = "更新者")
    private Integer updateBy;

    @ApiModelProperty(value = "图片地址")
    private String photoUrl;

}

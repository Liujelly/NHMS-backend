package xh.nursinghome.system.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

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
@TableName("sys_check")
@ApiModel(value = "Check对象", description = "")
public class Check extends PageBase implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "Id")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "考核名称")
    private String checkName;

    @ApiModelProperty(value = "考核类型")
    private String checkType;

    @ApiModelProperty(value = "考核时间")
    private Date time;

    @ApiModelProperty(value = "员工id")
    private Integer eid;

    @TableField(exist = false)
    private String ename;

    @ApiModelProperty(value = "考核内容")
    private String checkContent;

    @ApiModelProperty(value = "考核结果")
    private String checkResult;




}

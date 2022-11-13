package xh.nursinghome.system.utils;

import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Data;


@Data
public class PageBase {
    @TableField(exist = false)
    private long limit = 10;
    @TableField(exist = false)
    private long page = 1;
}

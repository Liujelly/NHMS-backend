package xh.nursinghome.system.code;

import lombok.Getter;
import lombok.Setter;

public enum ResultEnum {

    SUCCESS(200, "SUCCESS"),

    FAIL(400, "请求失败!");

    @Getter
    @Setter
    private int code;

    @Getter
    @Setter
    private String message;
 
    ResultEnum(int code, String message) {
        this.code = code;
        this.message = message;
    }
 
}
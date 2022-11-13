package xh.nursinghome.system.utils;


import xh.nursinghome.system.code.ResultEnum;

public final class ResultBuilder {
 
    public ResultBuilder() {
    }
 

    public static ResponseDateUtil success() {
        return ResponseDateUtil.builder()
                .code(ResultEnum.SUCCESS.getCode())
                .msg(ResultEnum.SUCCESS.getMessage())
                .build();
 
 
    }
 

    public static  <T> ResponseDateUtil<T> success(String message) {
        return ResponseDateUtil.<T>builder()
                .code(ResultEnum.SUCCESS.getCode())
                .msg(message)
                .build();
    }
 

    public static <T> ResponseDateUtil<T> success(T data) {
        return ResponseDateUtil.<T>builder()
                .code(ResultEnum.SUCCESS.getCode())
                .msg(ResultEnum.SUCCESS.getMessage())
                .data(data)
                .build();
    }

    public static <T> ResponseDateUtil<T> success(ResultEnum resultEnum) {
        return ResponseDateUtil.<T>builder()
                .code(resultEnum.getCode())
                .msg(resultEnum.getMessage())
                .build();
    }
 

    public static <T> ResponseDateUtil<T> success(ResultEnum resultEnum, T data) {
        return ResponseDateUtil.<T>builder()
                .code(resultEnum.getCode())
                .msg(resultEnum.getMessage())
                .data(data)
                .build();
    }
 

    public static ResponseDateUtil errorInfo() {
        return ResponseDateUtil.builder()
                .code(ResultEnum.FAIL.getCode())
                .msg(ResultEnum.FAIL.getMessage())
                .build();
    }



    public static ResponseDateUtil errorInfo(String msg) {
        return ResponseDateUtil.builder()
                .msg(msg)
                .build();
    }
 

 

    public static ResponseDateUtil errorInfo(ResultEnum resultEnum) {
        return ResponseDateUtil.builder()
                .code(resultEnum.getCode())
                .msg(resultEnum.getMessage())
                .build();
    }
 

    public static <T> ResponseDateUtil<T> errorInfo(ResultEnum resultEnum, T data) {
        return ResponseDateUtil.<T>builder()
                .code(resultEnum.getCode())
                .msg(resultEnum.getMessage())
                .data(data)
                .build();
    }
 
}
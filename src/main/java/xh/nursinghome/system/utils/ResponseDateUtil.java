package xh.nursinghome.system.utils;

import lombok.*;


@Data
@Builder(access = AccessLevel.MODULE)
@AllArgsConstructor
@NoArgsConstructor
public class ResponseDateUtil <T>{
    private String msg;
    private int code;
    private T data;
}

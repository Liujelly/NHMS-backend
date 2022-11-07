package xh.nursinghome.system.utils;

import java.net.InetAddress;
import java.net.UnknownHostException;

public class IPUtil {
    // 取得本机IP地址
    public static String getLocalIP() {
        InetAddress LocalIP =null;
        try {
            LocalIP = InetAddress.getLocalHost();
        } catch (UnknownHostException e) {
            e.printStackTrace();
        }
        return LocalIP.getHostAddress();
    }

    // 取得服务器网络地址
    public static String getServerIP(String www) {
        InetAddress ServerIP =null;
        try {
            ServerIP = InetAddress.getByName(www.trim());
            // 取得例如www.baidu.com的IP地址
        } catch (UnknownHostException e) {
            e.printStackTrace();
        }
        return ServerIP.getHostAddress();
    }

    public static void getAllIP(){

    }
}

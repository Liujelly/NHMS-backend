package xh.nursinghome.system.utils;


public class FileNameUtils {

    public static String getSuffix(String fileName) {
        return fileName.substring(fileName.lastIndexOf("."));
    }

    public static String getFileName(String fileOrginName) {
        return UUIDUtils.replaceUUID() + FileNameUtils.getSuffix(fileOrginName);
    }
}

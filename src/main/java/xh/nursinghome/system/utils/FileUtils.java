package xh.nursinghome.system.utils;

import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;


public class FileUtils {


    public static String upload(MultipartFile file, String path, String fileName) {
        String newFileName = FileNameUtils.getFileName(fileName);
        String realPath = path + "/" + newFileName;
        File dest = new File(realPath);
//      判断父级目录是否存在
        if (!dest.getParentFile().exists()) {
            dest.getParentFile().mkdir();
        }
        try {
            //保存文件
            file.transferTo(dest);
            return newFileName;
        } catch (IllegalStateException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return "fail";
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return "fail";
        }
    }
}

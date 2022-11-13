package xh.nursinghome.system.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.ResourceLoader;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import xh.nursinghome.system.dao.EmployeeMapper;
import xh.nursinghome.system.entity.Employee;
import xh.nursinghome.system.service.EmployeeService;
import xh.nursinghome.system.utils.FileUtils;
import xh.nursinghome.system.utils.ResponseDateUtil;
import xh.nursinghome.system.utils.ResultBuilder;

import javax.annotation.Resource;

@RestController
@RequestMapping("/upload")
public class EmployeePhotoController {

    private final ResourceLoader resourceLoader;

    @Autowired
    private EmployeeService employeeService;

    @Resource
    private EmployeeMapper employeeMapper;

    @Autowired
    public EmployeePhotoController(ResourceLoader resourceLoader) {
        this.resourceLoader = resourceLoader;
    }

    @Value("D:/Photos/")
    private String path;

    @RequestMapping("/employeePhotoUpload")
    public ResponseDateUtil employeePhotoUplaod(@RequestParam("file") MultipartFile file, @RequestParam("id") Integer id) {
        String localPath = path;
        System.out.println(localPath);
        String str = FileUtils.upload(file, localPath, file.getOriginalFilename());
        if (str != "fail") {
            Employee employee = employeeMapper.selectById(id);
            employee.setPhotoUrl(str);
            int i = employeeService.updateData(employee);
            if (i > 0) {
                return ResultBuilder.success("上传成功!");
            } else {
                return ResultBuilder.success("上传失败!");
            }
        } else {
            return ResultBuilder.success("上传失败!");
        }
    }

    @GetMapping("/showPhoto")
    public ResponseEntity showPhoto(@RequestParam("fileName") String fileName) {
        try {
            // 由于是读取本机的文件，file是一定要加上的， path是在application配置文件中的路径
            return ResponseEntity.ok(resourceLoader.getResource("file:" + path + fileName));
        } catch (Exception e) {
            return ResponseEntity.notFound().build();
        }
    }
}
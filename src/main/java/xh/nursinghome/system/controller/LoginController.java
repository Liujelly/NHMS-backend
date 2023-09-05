package xh.nursinghome.system.controller;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import xh.nursinghome.system.aop.OperationLogAnnotation;
import xh.nursinghome.system.dao.UserDAO;
import xh.nursinghome.system.dao.loginLogDAO;
import xh.nursinghome.system.entity.OperationLogDO;
import xh.nursinghome.system.entity.UserDO;
import xh.nursinghome.system.service.LoginService;
import xh.nursinghome.system.service.loginLogService;
import xh.nursinghome.system.utils.JwtTokenUtil;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Map;
import xh.nursinghome.system.entity.loginLog;

@RestController
public class LoginController {
    @Autowired
    private LoginService loginService;
    @Autowired
    private UserDAO userDAO;
    @Autowired
    private loginLogService loginLogSer;
    @Autowired
    private loginLogDAO loginLogDAO;

    @OperationLogAnnotation(operModul = "登录模块",operType = "登录",operDesc = "登录系统")
    @GetMapping("/loginJudge")
    public Object loginJudge(@RequestParam("userName") String userName, @RequestParam("password") String password) throws UnknownHostException, java.rmi.UnknownHostException {

        Map<String,Object> res=new HashMap<>();
        if(password!=""||userName!=""){
            UserDO userDO=loginService.findUser(userName);
            if(userDO!=null){
                if(password.equals(userDO.getPassword())){
                    if(userDO.getEnabled()){
                        String token=new JwtTokenUtil().generateToken(userDO);
                        res.put("code",100);
                        res.put("msg","登录成功");
                        res.put("token",token);
                    }else{
                        res.put("code",400);
                        res.put("msg","用户已禁用");
                    }
                }else{
                    loginLog loginLog=new loginLog();
                    loginLog.setUserName(userName);
                    loginLog.setError("密码有误："+password);
                    loginLogSer.loginLogSave(loginLog);
                    res.put("code",101);
                    res.put("msg","密码错误");
                }
            }else{
                res.put("code",200);
                res.put("msg","用户不存在");
            }
        }else{
            loginLog loginLog=new loginLog();
            loginLog.setUserName(userName);
            loginLog.setError("密码为空");
            loginLogSer.loginLogSave(loginLog);
            res.put("code",300);
            res.put("msg","用户或密码不能为空");
        }

        return res;
    }
    @GetMapping("/getUserName")
    public Map<String,Object> getUserName(HttpServletRequest request){
        Map<String,Object> res=new HashMap<>();
        String token = request.getHeader("token");
        JwtTokenUtil jwtTokenUtil=new JwtTokenUtil();
        String username=jwtTokenUtil.getUsernameFromToken(token);
        UserDO user=userDAO.findUser(username);
        res.put("relName",user.getRelName());
        return res;
    }
    @GetMapping("/findAllLoginLog")
    public Map<String,Object> findAllLoginLog(@RequestParam Integer pageNum, @RequestParam Integer pageSize){
        Map<String,Object> res=new HashMap<>();
        Page<loginLog> page = PageHelper.startPage(pageNum, pageSize).doSelectPage(() -> loginLogDAO.findAll());
        res.put("data",page.getResult());
        res.put("total",page.getTotal());
        return res;
    }
}

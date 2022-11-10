package xh.nursinghome.system.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import xh.nursinghome.system.entity.UserDO;
import xh.nursinghome.system.service.LoginService;
import xh.nursinghome.system.utils.JwtTokenUtil;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@RestController
public class LoginController {
    @Autowired
    private LoginService loginService;

    @GetMapping("/loginJudge")
    public Object loginJudge(@RequestParam("userName") String userName, @RequestParam("password") String password){

        Map<String,Object> res=new HashMap<>();
        if(password!=""||userName!=""){
            UserDO userDO=loginService.findUser(userName);
            if(userDO!=null){
                if(password.equals(userDO.getPassword())){
                    String token=new JwtTokenUtil().generateToken(userDO);
                    res.put("code",100);
                    res.put("msg","登录成功");
                    res.put("token",token);
                }else{
                    res.put("code",101);
                    res.put("msg","密码错误");
                }
            }else{
                res.put("code",200);
                res.put("msg","用户不存在");
            }
        }else{
            res.put("code",300);
            res.put("msg","用户或密码不能为空");
        }

        return res;
    }
}

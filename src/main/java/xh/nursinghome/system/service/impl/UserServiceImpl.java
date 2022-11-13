package xh.nursinghome.system.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.dao.RoleDAO;
import xh.nursinghome.system.dao.UserDAO;
import xh.nursinghome.system.entity.Employee;
import xh.nursinghome.system.entity.OperationLogDO;
import xh.nursinghome.system.entity.RoleDO;
import xh.nursinghome.system.entity.UserDO;
import xh.nursinghome.system.model.Option;
import xh.nursinghome.system.service.EmployeeService;
import xh.nursinghome.system.service.PermissionsService;
import xh.nursinghome.system.service.UserService;
import xh.nursinghome.system.utils.JwtTokenUtil;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.*;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDAO userDAO;
    @Autowired
    private PermissionsService permissionsService;
    @Autowired
    private RoleDAO roleDAO;
    @Autowired
    private EmployeeService employeeService;

    //同时查询所有角色
    @Override
    public Map<String,Object> findAll(int pageNum,int pageSize) {
        Map<String,Object> res=new HashMap<>();
        Page<UserDO> page = PageHelper.startPage(pageNum, pageSize).doSelectPage(() -> userDAO.findAll());
        res.put("data",page.getResult());
        res.put("total",page.getTotal());
        List<RoleDO> roleDOS=permissionsService.getRole();
        List<Option> options=new ArrayList<>();
        for(RoleDO roleDO:roleDOS){
            Option option=new Option();
            option.setLabel(roleDO.getNameZh());
            option.setValue(roleDO.getId());
            options.add(option);
        }
        res.put("options",options);
        return res;
    }

    @Override
    public Boolean updateEnabled(UserDO userDO) {
        Integer res=userDAO.updateEnabledAndRole(userDO);
        if(res==1){
            return true;
        }
        return false;
    }

    @Override
    public Boolean updateRole(UserDO userDO) {
        RoleDO roleDO=roleDAO.findRole(userDO.getRoleId());
        userDO.setRoleName(roleDO.getNameZh());

        Integer res=userDAO.updateEnabledAndRole(userDO);
        if(res==1){
            return true;
        }
        return false;
    }

    @Override
    public Boolean addUser(UserDO userDO, HttpServletRequest request) {
        userDO.setPassword(userDO.getUserName());
        userDO.setRoleName(roleDAO.findRole(userDO.getRoleId()).getNameZh());
        userDO.setEnabled(true);
        Date now=new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time = sdf.format(now);
        userDO.setCreatedTime(time);

        String token = request.getHeader("token");
        JwtTokenUtil jwtTokenUtil=new JwtTokenUtil();
        String username=jwtTokenUtil.getUsernameFromToken(token);
        userDO.setCreatedBy(username);
        Employee employee = employeeService.getById(userDO.getUserName());
        userDO.setRelName(employee.getEmployeeName());
        Integer res=userDAO.addUser(userDO);
        if(res==1){
            return true;
        }
        return false;
    }

    @Override
    public Map<String, Object> findComplex(int pageNum, int pageSize,String userName,String relName) {
        Map<String,Object> res=new HashMap<>();
        Page<UserDO> page = PageHelper.startPage(pageNum, pageSize).doSelectPage(() -> userDAO.findComplex(userName,relName));
        res.put("data",page.getResult());
        res.put("total",page.getTotal());
        return res;
    }

}

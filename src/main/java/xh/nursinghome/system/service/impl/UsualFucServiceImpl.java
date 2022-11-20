package xh.nursinghome.system.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import xh.nursinghome.system.dao.MenuDAO;
import xh.nursinghome.system.dao.UsualfucDAO;
import xh.nursinghome.system.entity.MenuDO;
import xh.nursinghome.system.entity.UsualfucDO;
import xh.nursinghome.system.model.Menu;
import xh.nursinghome.system.model.Option;
import xh.nursinghome.system.service.PermissionsService;
import xh.nursinghome.system.service.UsualFucService;
import xh.nursinghome.system.utils.HttpContextUtils;
import xh.nursinghome.system.utils.JwtTokenUtil;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class UsualFucServiceImpl implements UsualFucService {
    @Autowired
    UsualfucDAO usualfucDAO;
    @Autowired
    PermissionsService permissionsService;
    @Autowired
    MenuDAO menuDAO;

    @Override
    public Map<String, Object> findByUserName() {
        Map<String, Object> res=new HashMap<>();

        HttpServletRequest request = HttpContextUtils.getHttpServletRequest();
        //获取session
        String token = request.getHeader("token");
        JwtTokenUtil jwtTokenUtil=new JwtTokenUtil();
        String userName=jwtTokenUtil.getUsernameFromToken(token);

        List<UsualfucDO> usualfucDOS=usualfucDAO.findByUserName(userName);
        res.put("data",usualfucDOS);

        List<MenuDO> menuDOS=permissionsService.getBottomMenu(userName);
        List<Option> options=new ArrayList<>();
        for(MenuDO menuDO:menuDOS){
            Option option=new Option();
            option.setValue(menuDO.getId());
            option.setLabel(menuDO.getNameZh());
            options.add(option);
        }
        res.put("options",options);

        return res;
    }

    @Override
    public Boolean updateUsualFuc(Integer menuId) {
        UsualfucDO usualfucDO=new UsualfucDO();

        HttpServletRequest request = HttpContextUtils.getHttpServletRequest();
        //获取session
        String token = request.getHeader("token");
        JwtTokenUtil jwtTokenUtil=new JwtTokenUtil();
        String userName=jwtTokenUtil.getUsernameFromToken(token);
        usualfucDO.setUserName(userName);
        MenuDO menuDO=menuDAO.findById(menuId);
        usualfucDO.setMenuZh(menuDO.getNameZh());
        usualfucDO.setPath(menuDO.getPath());
        Integer res=usualfucDAO.insert(usualfucDO);
        if(res==1){
            return true;
        }

        return false;
    }
}

package xh.nursinghome.system.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.dao.UserDAO;
import xh.nursinghome.system.entity.UserDO;
import xh.nursinghome.system.service.LoginService;

@Service
public class LoginServiceImpl implements LoginService {
    @Autowired
    private UserDAO userDAO;
    @Override
    public UserDO findUser(String userName) {
        UserDO userDO=userDAO.findUser(userName);
        return userDO;
    }
}

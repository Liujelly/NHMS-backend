package xh.nursinghome.system.service;

import xh.nursinghome.system.entity.UserDO;

public interface LoginService {
    UserDO findUser(String userName);

}

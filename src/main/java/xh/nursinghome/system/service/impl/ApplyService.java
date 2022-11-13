package xh.nursinghome.system.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.dao.ApplyMapper;
import xh.nursinghome.system.entity.Apply;

@Service
public class ApplyService {

    @Autowired
    private ApplyMapper usermapper;
    public int save(Apply user) {
        if (user.getAid() == null) {  // user没有id，则表示是新增
            return usermapper.insert(user);
        } else { // 否则为更新
            return usermapper.update(user);
        }
    }

}


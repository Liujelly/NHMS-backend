package xh.nursinghome.system.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.dao.ApplytableMapper;
import xh.nursinghome.system.entity.Apply;

@Service
public class ApplytableService {
    @Autowired
    private ApplytableMapper applytableMapper;
    public int save(Apply user) {
        if (user.getAid() == null) {  // user没有id，则表示是新增
            return applytableMapper.insert(user);
        } else { // 否则为更新
            return applytableMapper.update(user);
        }
    }
}

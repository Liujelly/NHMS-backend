package xh.nursinghome.system.service;

import xh.nursinghome.system.entity.UsualfucDO;
import xh.nursinghome.system.model.Menu;

import java.util.List;
import java.util.Map;

public interface UsualFucService {
    Map<String,Object> findByUserName();
    Boolean updateUsualFuc(Integer menuId);
}

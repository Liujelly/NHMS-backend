package xh.nursinghome.system.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.dao.DishDAO;
import xh.nursinghome.system.entity.DishDO;
import xh.nursinghome.system.service.DishService;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class DishServiceImpl implements DishService {
    @Autowired
    private DishDAO dishDAO;

    @Override
    public List<DishDO> findAll() {
        return dishDAO.findAll();
    }

    @Override
    public Integer update(DishDO dishDO) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time = sdf.format(new Date());
        dishDO.setGmtModified(time);
        Integer res=dishDAO.update(dishDO);
        return res;
    }

    @Override
    public Integer add(DishDO dishDO) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time = sdf.format(new Date());
        dishDO.setGmtCreated(time);
        dishDO.setGmtModified(time);
        Integer res=dishDAO.add(dishDO);
        return res;
    }

    @Override
    public List<DishDO> findComplex(String name, String taste, String cuisine, String tabooCrowds) {
        List<DishDO> dishDOS=dishDAO.findComplex(name,taste,cuisine,tabooCrowds);
        return dishDOS;
    }
}

package xh.nursinghome.system.service;

import org.apache.ibatis.annotations.Param;
import xh.nursinghome.system.entity.DishDO;

import java.util.List;

public interface DishService {

    List<DishDO> findAll();
    Integer update(DishDO dishDO);
    Integer add(DishDO dishDO);
    List<DishDO> findComplex( String name, String taste, String cuisine,String tabooCrowds);
}

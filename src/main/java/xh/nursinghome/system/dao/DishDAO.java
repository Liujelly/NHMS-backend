package xh.nursinghome.system.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import xh.nursinghome.system.entity.DishDO;

import java.util.List;

@Mapper
@Repository
public interface DishDAO {
    List<DishDO> findAll();
    Integer update(DishDO dishDO);
    Integer add(DishDO dishDO);
    List<DishDO> findComplex(@Param("name") String name,@Param("taste") String taste,@Param("cuisine") String cuisine,@Param("tabooCrowds") String tabooCrowds);
}

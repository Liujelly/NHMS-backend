package xh.nursinghome.system.dao;


import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import xh.nursinghome.system.entity.elderly;
import xh.nursinghome.system.entity.retreat;

import java.util.List;

@Mapper
@Repository
public interface RetreatMapper {
    List<retreat> SelectRetreat(@Param("pageNum") Integer pageNum, @Param("pageSize") Integer pageSize, @Param("name") String name, @Param("sex") String sex);
    Integer total(@Param("name") String name,@Param("sex") String sex);
    List<elderly> Select();
    elderly SelectElderlyid(@Param("id") Integer id);
    Integer Insertretreat(retreat retreat);
    List<retreat> SelectRetreat1();
    Integer UpdateRetreat(retreat retreat);
    Integer DeleteRetreat(@Param("id") Integer id);


}

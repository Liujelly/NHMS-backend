package xh.nursinghome.system.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import xh.nursinghome.system.entity.elderly;

import java.util.List;

@Mapper
@Repository
public interface ElderlyMapper {
    List<elderly> SelectElderly(@Param("pageNum") Integer pageNum, @Param("pageSize") Integer pageSize, @Param("name") String name, @Param("sex") String sex);
    Integer total(@Param("name") String name,@Param("sex") String sex);
    List<elderly> Select();
    Integer InsertElderly(elderly elderly);
    Integer UpdateElderly(elderly elderly);
    Integer DeleteElderly(@Param("id")Integer id);
    Integer UpdateElderlyDstate(@Param("dstate") String dstate,@Param("dormitoryid")String dormitoryid );

}

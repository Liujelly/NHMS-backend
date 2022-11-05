package xh.nursinghome.system.dao;


import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import xh.nursinghome.system.entity.back;
import xh.nursinghome.system.entity.elderly;

import java.util.List;

@Mapper
@Repository
public interface BackMapper {
    List<back> SelectBack(@Param("pageNum") Integer pageNum, @Param("pageSize") Integer pageSize, @Param("name") String name);
    Integer total(@Param("name") String name);
    List<elderly> Select();
    elderly SelectElderlyid(@Param("id") Integer id);
    List<back> SelectBack1();
    Integer InsertBack(back back);
    Integer DeleteBack(@Param("id") Integer id);
    Integer UpdateElderly(@Param("id") Integer id);
    Integer UpdateLeaveArchive(back back);
}

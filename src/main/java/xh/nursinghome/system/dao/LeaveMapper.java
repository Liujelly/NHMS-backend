package xh.nursinghome.system.dao;


import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import xh.nursinghome.system.entity.elderly;
import xh.nursinghome.system.entity.leave;
import xh.nursinghome.system.entity.leavearchive;

import java.util.List;

@Mapper
@Repository
public interface LeaveMapper {
    List<leave> SelectLeave(@Param("pageNum") Integer pageNum, @Param("pageSize") Integer pageSize, @Param("name") String name);
    Integer total(@Param("name") String name);
    List<elderly> Select();
    List<leave> SelectLeave1();
    elderly SelectElderlyid(@Param("id") Integer id);
    Integer InsertLeave(leave leave);
    Integer DeleteLeave(@Param("id") Integer id);
    Integer UpdateElderly(@Param("id") Integer id);
    Integer InsertLeaveArchive(leavearchive leavearchive);

}

package xh.nursinghome.system.dao;


import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import xh.nursinghome.system.entity.leavearchive;

import java.util.List;

@Mapper
@Repository
public interface LeaveArchiveMapper {
    List<leavearchive> SelectLeaveArchive(@Param("pageNum") Integer pageNum, @Param("pageSize") Integer pageSize, @Param("name") String namex);
    Integer total(@Param("name") String name);
}

package xh.nursinghome.system.dao;


import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import xh.nursinghome.system.entity.checkin;
import xh.nursinghome.system.entity.inarchive;

import java.util.List;

@Mapper
@Repository
public interface ApprovalMapper {
    List<checkin> SelectApproval(@Param("pageNum") Integer pageNum, @Param("pageSize") Integer pageSize, @Param("name") String name, @Param("sex") String sex);
    Integer total(@Param("name") String name,@Param("sex") String sex);
    Integer InsertApproval(checkin checkin);
    Integer DeleteCheckIn(@Param("id")Integer id);
    Integer InsertInArchive(inarchive inarchive);


}

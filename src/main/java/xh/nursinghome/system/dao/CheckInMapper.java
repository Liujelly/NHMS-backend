package xh.nursinghome.system.dao;


import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import xh.nursinghome.system.entity.checkin;
import xh.nursinghome.system.entity.elderly;

import java.util.List;

@Mapper
@Repository
public interface CheckInMapper {
    List<checkin> SelectCheckIn(@Param("pageNum") Integer pageNum, @Param("pageSize") Integer pageSize, @Param("name") String name, @Param("sex") String sex);
    Integer total(@Param("name") String name,@Param("sex") String sex);
    List<checkin> Select();
    Integer InsertCheckIn(checkin checkin);
    Integer UpdateCheckIn(checkin checkin);
    Integer DeleteCheckIn(@Param("id")Integer id);
    elderly SelectElderly(@Param("id")Integer id);
}

package xh.nursinghome.system.dao;


import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import xh.nursinghome.system.entity.DormDO;
import xh.nursinghome.system.entity.checkin;
import xh.nursinghome.system.entity.elderly;
import xh.nursinghome.system.entity.inarchive;

import java.util.List;

@Mapper
@Repository
public interface InArchiveMapper {
    List<inarchive> SelectInArchive(@Param("pageNum") Integer pageNum, @Param("pageSize") Integer pageSize, @Param("name") String name, @Param("sex") String sex);
    Integer total(@Param("name") String name,@Param("sex") String sex);
    checkin SelectCheckIn(@Param("id") Integer id);
    Integer DeleteElderly(@Param("id") Integer id);
    Integer InsertCheckIn(checkin checkin);
    Integer DeleteInArchive(@Param("id") Integer id);
    elderly SelectElderly(@Param("id") Integer id);
    Integer UpdateDormitory(@Param("buildingId") Integer buildingId,@Param("dormName") String dormName,@Param("elderlyIds") String elderlyIds);
    Integer UpdateDormitory1(@Param("buildingId") Integer buildingId,@Param("dormName") String dormName,@Param("elderlyIds") String elderlyIds);
    DormDO SelectDormitory(@Param("buildingId") Integer buildingId, @Param("dormName") String dormName);
}

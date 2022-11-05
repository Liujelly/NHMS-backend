package xh.nursinghome.system.dao;


import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import xh.nursinghome.system.entity.DormDO;
import xh.nursinghome.system.entity.outarchive;

import java.util.List;

@Mapper
@Repository
public interface OutArchiveMapper {
    List<outarchive> SelectOutArchive(@Param("pageNum") Integer pageNum, @Param("pageSize") Integer pageSize, @Param("name") String name, @Param("sex") String sex);
    Integer total(@Param("name") String name,@Param("sex") String sex);
    Integer InsertElderly(outarchive outarchive);
    Integer InsertElderly1(outarchive outarchive);
    DormDO SelectDorm(@Param("buildingId") Integer buildingId,@Param("dormName") String dormName);
    Integer UpdateDorm(@Param("buildingId") Integer buildingId,@Param("dormName") String dormName,@Param("elderlyIds") String elderlyIds);
    Integer UpdateDorm1(@Param("buildingId") Integer buildingId,@Param("dormName") String dormName,@Param("elderlyIds") String elderlyIds);
    Integer DeleteOutArchive(@Param("id") Integer id);
    Integer InsertRetreat(outarchive outarchive);
    Integer InsertRetreat1(outarchive outarchive);

}

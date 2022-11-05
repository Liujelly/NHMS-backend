package xh.nursinghome.system.dao;


import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import xh.nursinghome.system.entity.DormDO;
import xh.nursinghome.system.entity.elderly;
import xh.nursinghome.system.entity.outarchive;
import xh.nursinghome.system.entity.retreat;

import java.util.List;

@Mapper
@Repository
public interface RApprovalMapper {
    List<retreat> SelectRetreat(@Param("pageNum") Integer pageNum, @Param("pageSize") Integer pageSize);
    Integer total();
    Integer DeleteElderly(@Param("id") Integer id);
    Integer DeleteRetreat(@Param("id") Integer id);
    Integer UpdateDormitory(@Param("buildingId") Integer buildingId,@Param("dormName") String dormName,@Param("elderlyIds") String elderlyIds);
    Integer UpdateDormitory1(@Param("buildingId") Integer buildingId,@Param("dormName") String dormName,@Param("elderlyIds") String elderlyIds);
    elderly SelectElderly(@Param("id") Integer id);
    Integer InsertOutArchive(outarchive outarchive);
    DormDO SelectDormitory(@Param("buildingId") Integer buildingId, @Param("dormName") String dormName);
}

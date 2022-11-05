package xh.nursinghome.system.dao;


import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import xh.nursinghome.system.entity.DormDO;
import xh.nursinghome.system.entity.elderly;

import java.util.List;

@Mapper
@Repository
public interface DormitoryMapper
{
    List<DormDO> SelectDormitory(@Param("pageNum") Integer pageNum, @Param("pageSize") Integer pageSize, @Param("bedStatus") String bedStatus);
    Integer total(@Param("bedStatus") String bedStatus);
    List<elderly> Select();
    elderly SelectElderly(@Param("id") Integer id);
    DormDO SelectDormitory1(@Param("buildingId") Integer buildingId,@Param("dormName") String dormName);

    Integer UpdateDormitory(DormDO dormDO);
    Integer UpdateElderly(@Param("id") Integer id,@Param("buildingId") Integer buildingId,@Param("dormName") String dormName);
    Integer UpdateDormitory1(DormDO dormDO);
    Integer UpdateDormitory2(DormDO dormDO);


}

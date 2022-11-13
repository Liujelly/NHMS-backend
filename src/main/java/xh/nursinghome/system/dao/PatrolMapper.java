package xh.nursinghome.system.dao;

import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;
import xh.nursinghome.system.entity.patrol;

import java.util.List;


@Mapper
@Repository
public interface PatrolMapper {

    @Select("select * from patrol  Limit #{pageNum},#{pageSize}")
    List<patrol> selectPage(@Param("pageNum") Integer pageNum ,@Param("pageSize") Integer pageSize);
    @Select("select count(*) from patrol")
    Integer selectTotal();
    @Insert("INSERT into patrol values(null,#{pName},#{pTime},#{pPerson},#{pContent},#{pUnit},#{pSide})" )
    int insert(patrol patrol);
    @Update("update  patrol set p_name=#{pName},p_time=#{pTime},p_person=#{pPerson},p_content=#{pContent},p_unit=#{pUnit},p_side=#{pSide}  where p_id=#{pId}" )
    int update(patrol patrol);
    @Delete("delete from patrol where p_id=#{pId}")
    Integer deleteById(@Param("pId") Integer pId);

}

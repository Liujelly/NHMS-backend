package xh.nursinghome.system.dao;




import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;
import xh.nursinghome.system.entity.visit;

import java.util.List;


@Mapper
@Repository
public interface VisitMapper {
    @Select("select * from visit  Limit #{pageNum},#{pageSize}")
    List<visit> selectPage(@Param("pageNum") Integer pageNum ,@Param("pageSize") Integer pageSize);
    @Select("select count(*) from visit")
    Integer selectTotal();
    @Insert("INSERT into visit values(null,#{vName},#{vSex},#{vPhone},#{oldname},#{oldid},#{vTime},#{vRelation},#{vDinner},#{vBestow},#{vHeath},#{vDuration},#{vCometime},#{vNumber})" )
    int insert(visit visit);
    @Update("update  visit set v_name=#{vName},v_sex=#{vSex},v_phone=#{vPhone},oldname=#{oldname},oldid=#{oldid},v_time=#{vTime},v_relation=#{vRelation},v_dinner=#{vDinner},v_bestow=#{vBestow}" +
            ",v_heath=#{vHeath},v_duration=#{vDuration},v_cometime=#{vCometime},v_number=#{vNumber}  where v_id=#{vId}" )
    int update(visit visit);
    @Delete("delete from visit where v_id=#{vId}")
    Integer deleteById(@Param("vId") Integer vId);
}

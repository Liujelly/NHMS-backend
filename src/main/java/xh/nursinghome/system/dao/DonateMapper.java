package xh.nursinghome.system.dao;


import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;
import xh.nursinghome.system.entity.donate;

import java.util.List;


@Mapper
@Repository
public interface DonateMapper {
    String findUsers(donate donate);

    @Select("select * from donate  Limit #{pageNum},#{pageSize}")
    List<donate> selectPage(@Param("pageNum") Integer pageNum ,@Param("pageSize") Integer pageSize);
    @Select("select count(*) from donate")
    Integer selectTotal();
    @Insert("INSERT into donate values(#{dName},#{dSex},null,#{dAge},#{dPhone},#{dGoodsname},#{dGoodsnumber},#{dSource},#{dTime},#{dGoodsclass})" )
    int insert(donate donate);
    @Update("update  donate set d_name=#{dName},d_sex=#{dSex},d_age=#{dAge},d_phone=#{dPhone},d_goodsname=#{dGoodsname},d_goodsnumber=#{dGoodsnumber},d_source=#{dSource},d_time=#{dTime},d_goodsclass=#{dGoodsclass} where d_id=#{dId}" )
    int update(donate donate);
    @Delete("delete from donate where d_id=#{dId}")
    Integer deleteById(@Param("dId") Integer dId);
    Integer updatematerial(@Param("number") Integer number,@Param("mName") String mName);


}

package xh.nursinghome.system.dao;


import org.apache.ibatis.annotations.*;
import xh.nursinghome.system.entity.Apply;

import java.util.List;


//与数据库进行交互
@Mapper
public interface ApplyMapper {

    @Select("SELECT * from apply")
    List<Apply> findAll();

    @Insert("INSERT into apply(Aid,Aname,Aage,Asex,Aphone,Aemail,Aaddress,Anumber,Applytime,Acometime,Aactive,AactiveTime,Aheath,Astate,Apname)" +
            " VALUES(#{Aid},#{Aname},#{Aage},#{Asex},#{Aphone},#{Aemail},#{Aaddress}," +
            "#{Anumber},#{Applytime},#{Acometime},#{Aactive},#{AactiveTime},#{Aheath},#{Astate},#{Apname})" )
    int insert(Apply user);

@Update("update apply set Aname=#{Aname},Asex=#{Asex},Aphone=#{Aphone},Aage=#{Aage},Aemail=#{Aemail},Aaddress=#{Aaddress},Anumber=#{Anumber},Applytime=#{Applytime},Acometime=#{Acometime},Aactive=#{Aactive},AactiveTime=#{AactiveTime},Aheath=#{Aheath},Astate=#{Astate},Apname=#{Apname} where Aid=#{Aid}")
     int update(Apply user);



     @Delete("delete from apply where Aid=#{Aid}")
      Integer deleteById(@Param("Aid") Integer Aid);

     @Select("select *from apply where aname like concat('%', #{aname},'%') Limit #{pageNum},#{pageSize}")
     List<Apply> selectPage(@Param("pageNum") Integer pageNum ,@Param("pageSize") Integer pageSize,@Param("aname") String aname);

     @Select("select count(*) from apply where aname like concat('%', #{aname},'%')")
    Integer selectTotal(@Param("aname") String aname);



}

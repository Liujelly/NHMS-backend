package xh.nursinghome.system.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;
import xh.nursinghome.system.entity.Apply;

@Mapper
@Repository
public interface ApplytableMapper {
    @Update("update apply set Aname=#{Aname},Asex=#{Asex},Aphone=#{Aphone},Aage=#{Aage},Aemail=#{Aemail},Aaddress=#{Aaddress},Anumber=#{Anumber},Applytime=#{Applytime},Acometime=#{Acometime},Aactive=#{Aactive},AactiveTime=#{AactiveTime},Aheath=#{Aheath}where Aid=#{Aid}")
    int update(Apply user);
    @Insert("INSERT into apply(Aid,Aname,Aage,Asex,Aphone,Aemail,Aaddress,Anumber,Applytime,Acometime,Aactive,AactiveTime,Aheath)" +
            " VALUES(#{Aid},#{Aname},#{Aage},#{Asex},#{Aphone},#{Aemail},#{Aaddress}," +
            "#{Anumber},#{Applytime},#{Acometime},#{Aactive},#{AactiveTime},#{Aheath})" )
    int insert(Apply user);

}

package xh.nursinghome.system.dao;


import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
import xh.nursinghome.system.entity.Return;

import java.util.List;

@Repository
@Mapper
public interface ReturnMapper {
    @Select("SELECT * FROM return1")
    List<Return> findAll();
    @Insert("INSERT INTO return1(inbound_number,material_number,material_name,warehousing_quantity,warehousing_time,production_date,m_supplier,shelf_life,in_operator) VALUES (#{inboundNumber},#{materialNumber},#{materialName},#{warehousingQuantity},#{warehousingTime},#{productionDate},#{mSupplier},#{shelfLife},#{inOperator})")
    int insert(Return r);
    //入库
    int update(Return r);

    @Select("select * from return1 where material_name like #{materialName}\n" +
            "          and in_operator like #{inOperator}\n" +
            "          limit #{pageNum},#{pageSize}")
    List<Return> selectPage(@Param("pageNum") Integer pageNum, @Param("pageSize") Integer pageSize,@Param("materialName")  String materialName,@Param("inOperator")  String inOperator);

    @Select("select count(*) from return1 where material_name like concat('%',#{materialName},'%') and in_operator like #{inOperator} ")
    Integer SelectTotal(@Param("materialName")String materialName,@Param("inOperator")String inOperator);

    @Select("select * from return1 where inbound_number = #{inboundNumber}\n"  +
            "          limit #{pageNum},#{pageSize}")
    List<Return> selectbyIdPage(@Param("pageNum") Integer pageNum, @Param("pageSize") Integer pageSize,@Param("inboundNumber")Integer inboundNumber);

    @Select("select count(*) from return1 where inbound_number=#{inboundNumber} ")
    Integer SelectById(@Param("Id")Integer Id);

    @Select("select * from return1 where warehousing_time = #{warehousing_time}\n"  +
            "          limit #{pageNum},#{pageSize}")
    List<Return> selectbyTimePage(@Param("pageNum") Integer pageNum, @Param("pageSize") Integer pageSize,@Param("warehousing_time")String warehousing_time);
    @Select("select count(*) from return1 where warehousing_time=#{warehousingTime}")
    Integer SelectByTime(@Param("time") String time);
    @Select("select * from return1 where outbound_number=#{outboundNumber} ")
    Return findById(@Param("outboundNumber") Integer outboundNumber);
}

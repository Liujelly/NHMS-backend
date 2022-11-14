package xh.nursinghome.system.dao;


import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
import xh.nursinghome.system.entity.InRecord;

import java.util.List;


@Repository
@Mapper
public interface InRecordMapper {
    //入库记录的相关接口
    @Select("SELECT * FROM inrecord")
    List<InRecord> findAll();
    @Insert("INSERT INTO inrecord(material_number,material_name,warehousing_quantity,warehousing_time,production_date,m_supplier,shelf_life,in_operator) VALUES (#{materialNumber},#{materialName},#{warehousingQuantity},#{warehousingTime},#{productionDate},#{mSupplier},#{shelfLife},#{inOperator})")
    int insert(InRecord inRecord);
    //入库


    @Select("select * from inrecord where material_name like #{materialName}\n" +
            "          and in_operator like #{inOperator}\n" +
            "          limit #{pageNum},#{pageSize}")
    List<InRecord> selectPage(@Param("pageNum") Integer pageNum,@Param("pageSize") Integer pageSize,@Param("materialName") String materialName,@Param("inOperator") String inOperator);

    @Select("select count(*) from inrecord where material_name like concat('%',#{materialName},'%') and in_operator like #{inOperator} ")
    Integer SelectTotal(@Param("materialName") String materialName,@Param("inOperator") String inOperator);

    @Select("select * from inrecord where inbound_number = #{inboundNumber}\n"  +
            "          limit #{pageNum},#{pageSize}")
    List<InRecord> selectbyIdPage(@Param("pageNum") Integer pageNum,@Param("pageSize") Integer pageSize,@Param("inboundNumber") Integer inboundNumber);

    @Select("select count(*) from inrecord where inbound_number=#{inboundNumber} ")
    Integer SelectById(@Param("Id") Integer Id);

    @Select("select * from inrecord where warehousing_time = #{warehousing_time}\n"  +
            "          limit #{pageNum},#{pageSize}")
    List<InRecord> selectbyTimePage(@Param("pageNum") Integer pageNum,@Param("pageSize") Integer pageSize,@Param("warehousing_time") String warehousing_time);
    @Select("select count(*) from inrecord where warehousing_time=#{warehousingTime}")
    Integer SelectByTime(@Param("time") String time);




}

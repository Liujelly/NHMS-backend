package xh.nursinghome.system.dao;

import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;
import xh.nursinghome.system.entity.Employeetest;
import xh.nursinghome.system.entity.MaterialDetail;

import java.util.List;

@Repository
@Mapper
public interface MaterialDetailMapper {
    //入库的相关接口
    //入库记录的相关接口
    @Select("SELECT * FROM material_detail")
    List<MaterialDetail> findAll();
    //入库
    @Insert("INSERT INTO material_detail(material_number,material_name,warehousing_quantity,warehousing_time,production_date,m_supplier,shelf_life,in_operator) VALUES (#{materialNumber},#{materialName},#{warehousingQuantity},#{warehousingTime},#{productionDate},#{mSupplier},#{shelfLife},#{inOperator})")
    int insert(MaterialDetail materialDetail);

//更新

    int update(MaterialDetail materialDetail);


    @Select("select * from material_detail where material_name like #{materialName}\n" +
            "          and in_operator like #{inOperator}\n" +
            "          limit #{pageNum},#{pageSize}")
    List<MaterialDetail> selectPage(@Param("pageNum") Integer pageNum,@Param("pageSize") Integer pageSize,@Param("materialName") String materialName,@Param("inOperator") String inOperator);

    @Select("select count(*) from material_detail where material_name like concat('%',#{materialName},'%') and in_operator like #{inOperator} ")
    Integer SelectTotal(@Param("materialName") String materialName,@Param("inOperator") String inOperator);

    @Select("select * from material_detail where inbound_number = #{inboundNumber}\n"  +
            "          limit #{pageNum},#{pageSize}")
    List<MaterialDetail> selectbyIdPage(@Param("pageNum") Integer pageNum,@Param("pageSize") Integer pageSize,@Param("inboundNumber") Integer inboundNumber);

    @Select("select count(*) from material_detail where inbound_number=#{inboundNumber} ")
    Integer SelectById(Integer Id);

    @Select("select * from material_detail where warehousing_time = #{warehousing_time}\n"  +
            "          limit #{pageNum},#{pageSize}")
    List<MaterialDetail> selectbyTimePage(@Param("pageNum") Integer pageNum,@Param("pageSize") Integer pageSize,@Param("warehousing_time") String warehousing_time);
    @Select("select count(*) from material_detail where warehousing_time=#{warehousingTime}")
    Integer SelectByTime(@Param("time") String time);


    @Delete("delete from material_detail where inbound_number=#{inboundNumber}")
    Integer deleteBymId(@Param("inboundNumber") Integer inboundNumber);

    /*** 批量删除 * @param ids
     * @return
     * */
    @Select("select * from material_detail where inbound_number=#{inboundNumber} ")
    MaterialDetail findById(@Param("inboundNumber") Integer inboundNumber);

    //    通过list集合实现批量删除
    Integer deleteByIds(@Param("mIds") List<Integer> mIds);


    @Select("SELECT * FROM sys_employee")
    List<Employeetest> findAllEmployee();

    @Select("select id from sys_employee")
    List<Integer> findEmployeeId();


}

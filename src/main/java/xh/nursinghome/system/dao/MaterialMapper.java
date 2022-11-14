package xh.nursinghome.system.dao;


import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;
import xh.nursinghome.system.entity.Material;

import java.util.List;

@Repository
@Mapper
public interface MaterialMapper {
    //入库的相关接口
    @Select("SELECT * FROM material")
    List<Material> findAll();
    @Insert("INSERT INTO material(m_id,m_name,m_specification,m_unit,m_type,m_Location,m_quantity,m_suppliers,m_highest,m_lowest) VALUES (#{mId},#{mName},#{mSpecification},#{mUnit},#{mType},#{mLocation},#{mQuantity},#{mSuppliers},#{mHighest},#{mLowest})")
    int insert(Material material);
//入库
    int update(Material material);
@Delete("delete from material where m_id=#{mId}")
    Integer deleteBymId(@Param("mId") String mId);

@Select("select * from material where m_name like #{mName}\n" +
        "          and m_specification like #{mSpecification}\n" +
        "          limit #{pageNum},#{pageSize}")
    List<Material> selectPage(@Param("pageNum") Integer pageNum,@Param("pageSize") Integer pageSize,@Param("mName") String mName,@Param("mSpecification") String mSpecification);

@Select("select count(*) from material where m_name like concat('%',#{mName},'%') and m_specification like #{mSpecification} ")
    Integer SelectTotal(@Param("mName") String mName,@Param("mSpecification")String mSpecification);

    @Select("select * from material where m_id = #{mId}\n"  +
            "          limit #{pageNum},#{pageSize}")
    List<Material> selectbyIdPage(@Param("pageNum") Integer pageNum,@Param("pageSize") Integer pageSize,@Param("mId") String mId);

    @Select("select count(*) from material where m_id=#{mId} ")
    Integer SelectById(@Param("Id") String Id);

    @Select("select * from material where m_id=#{mId} ")
    Material findById(@Param("Id") String Id);
    /*** 批量删除 * @param ids
     * @return
     * */

    @Select("select * from material where m_name like #{mName} and m_specification like #{mSpecification} limit #{pageNum},#{pageSize}")
    List<Material> selectPageAlert(@Param("pageNum") Integer pageNum,@Param("pageSize") Integer pageSize,@Param("mName") String mName,@Param("mSpecification") String mSpecification);

    @Select("select count(*) from material where m_name like concat('%',#{mName},'%') and m_specification like #{mSpecification} ")
    Integer SelectTotalAlert(@Param("mName") String mName,@Param("mSpecification") String mSpecification);

    //    通过list集合实现批量删除
    Integer deleteByIds(@Param("mIds") List<String> mIds);}

//批量插入
//Alert

//仓库管理Mapper
//


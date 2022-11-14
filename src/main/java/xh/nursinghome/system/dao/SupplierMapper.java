package xh.nursinghome.system.dao;


import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;
import xh.nursinghome.system.entity.Material;
import xh.nursinghome.system.entity.Supplier;

import java.util.List;

@Repository
@Mapper
public interface SupplierMapper {


        //入库的相关接口
        @Select("SELECT * FROM supplier")
        List<Supplier> findAll();
        @Insert("INSERT INTO supplier(supplier_name,supplier_address,business_scope,supplier_person,supplier_phone) VALUES (#{supplierName},#{supplierAddress},#{businessScope},#{supplierPerson},#{supplierPhone})")
        int insert(Supplier supplier);
        //入库
        int supplierUpdate(Supplier supplier);
        @Delete("delete from supplier where supplier_num=#{supplierNum}")
        Integer deleteBymId(@Param("supplierNum") Integer supplierNum);

        @Select("select * from supplier where supplier_name like #{supplierName}\n" +
                "          and supplier_address like #{supplierAddress}\n" +
                "          limit #{pageNum},#{pageSize}")
        List<Supplier> selectPage(@Param("pageNum") Integer pageNum, @Param("pageSize") Integer pageSize,@Param("supplierName") String supplierName,@Param("supplierAddress") String supplierAddress);

        @Select("select count(*) from supplier where supplier_name like concat('%',#{supplierName},'%') and supplier_address like #{supplierAddress} ")
        Integer SelectTotal(@Param("supplierName") String supplierName,@Param("supplierAddress") String supplierAddress);

        @Select("select * from supplier where supplier_num = #{supplierNum}\n"  +
                "          limit #{pageNum},#{pageSize}")
        List<Supplier> selectbyIdPage(@Param("pageNum") Integer pageNum, @Param("pageSize") Integer pageSize, @Param("supplierNum") Integer supplierNum);

        @Select("select count(*) from supplier where supplier_num=#{supplierNum} ")
        Integer SelectById(@Param("Id") Integer Id);

        @Select("select * from supplier where supplier_num=#{supplierNum} ")
        Material findById(@Param("Id") Integer Id);
        /*** 批量删除 * @param ids
         * @return
         * */

        //    通过list集合实现批量删除
        Integer supplierDeleteByIds(@Param("mIds") List<Integer> supplierNums);
}


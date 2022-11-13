package xh.nursinghome.system.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import xh.nursinghome.system.entity.PhysicalExam;

/**
 * @author ljy
 * @create 2022-11-05 22:32
 */
@Mapper
@Repository
public interface PhysicalExamMapper {
    PhysicalExam selectExam(@Param("orderId") Integer orderId);

    Boolean savePE(PhysicalExam physicalExam);

    Boolean updatePE(PhysicalExam physicalExam);
    Integer selectPhyTotal();

}

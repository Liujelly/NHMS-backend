package xh.nursinghome.system.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import xh.nursinghome.system.entity.HealthIndex;
import xh.nursinghome.system.entity.HealthLevel;

import java.util.List;

/**
 * @author ljy
 * @create 2022-11-09 21:21
 */
@Mapper
public interface HealthLevelMapper {

    List<HealthLevel>showLevel(@Param("pageNum") Integer pageNum, @Param("pageSize")  Integer pageSize, @Param("orderId")  Integer orderId, @Param("orderName")  String orderName);

    Boolean addLevel(HealthLevel healthLevel);
    Boolean addName(HealthIndex healthIndex);
    Boolean updateAnalysis(HealthLevel healthLevel);
}

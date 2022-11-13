package xh.nursinghome.system.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import xh.nursinghome.system.entity.DiseaseWarning;
import xh.nursinghome.system.entity.HealthIndex;

import java.util.List;

/**
 * @author ljy
 * @create 2022-11-11 1:08
 */
@Mapper
public interface DiseaseWarningMapper {
    List<DiseaseWarning>showWarning(@Param("pageNum") Integer pageNum,@Param("pageSize") Integer pageSize,@Param("orderId") Integer orderId,@Param("orderName") String orderName);
    Integer selectTotal();

    Boolean addName(HealthIndex healthIndex);
    Boolean addWarning(DiseaseWarning diseaseWarning);
    Boolean updateSuggest(DiseaseWarning diseaseWarning);


}

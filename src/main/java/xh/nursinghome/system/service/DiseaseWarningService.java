package xh.nursinghome.system.service;

import xh.nursinghome.system.entity.DiseaseWarning;
import xh.nursinghome.system.entity.HealthIndex;

import java.util.List;

/**
 * @author ljy
 * @create 2022-11-11 1:08
 */
public interface DiseaseWarningService {
    List<DiseaseWarning> showWarning(Integer pageNum, Integer pageSize,Integer orderId,String orderName);
    Integer selectTotal();
    Boolean addName(HealthIndex healthIndex);
    Boolean addWarning(DiseaseWarning diseaseWarning);
    Boolean updateSuggest(DiseaseWarning diseaseWarning);
}

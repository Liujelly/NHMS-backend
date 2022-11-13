package xh.nursinghome.system.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.entity.DiseaseWarning;
import xh.nursinghome.system.entity.HealthIndex;
import xh.nursinghome.system.dao.DiseaseWarningMapper;
import xh.nursinghome.system.service.DiseaseWarningService;

import java.util.List;

/**
 * @author ljy
 * @create 2022-11-11 1:08
 */
@Service
public class DiseaseWarningServiceImpl implements DiseaseWarningService {
    @Autowired
    private DiseaseWarningMapper diseaseWarningMapper;
    @Override
    public List<DiseaseWarning> showWarning(Integer pageNum, Integer pageSize,Integer orderId,String orderName) {
        return diseaseWarningMapper.showWarning(pageNum,pageSize,orderId,orderName);
    }

    @Override
    public Integer selectTotal() {
        return diseaseWarningMapper.selectTotal();
    }

    @Override
    public Boolean addName(HealthIndex healthIndex) {
        return diseaseWarningMapper.addName(healthIndex);
    }

    @Override
    public Boolean addWarning(DiseaseWarning diseaseWarning) {
        return diseaseWarningMapper.addWarning(diseaseWarning);
    }


    @Override
    public Boolean updateSuggest(DiseaseWarning diseaseWarning) {
        return diseaseWarningMapper.updateSuggest(diseaseWarning);
    }
}

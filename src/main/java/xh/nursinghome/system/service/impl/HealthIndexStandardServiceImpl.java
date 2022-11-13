package xh.nursinghome.system.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.entity.HealthIndexStandard;
import xh.nursinghome.system.dao.HealthIndexStandardMapper;
import xh.nursinghome.system.service.HealthIndexStandardService;

import java.util.List;

/**
 * @author ljy
 * @create 2022-11-09 9:22
 */
@Service
public class HealthIndexStandardServiceImpl implements HealthIndexStandardService {
    @Autowired
    private HealthIndexStandardMapper healthIndexStandardMapper;


    @Override
    public List<HealthIndexStandard> showStandard() {
        return healthIndexStandardMapper.showStandard();
    }

    @Override
    public Boolean updateStandard(HealthIndexStandard healthIndexStandard) {
        return healthIndexStandardMapper.updateStandard(healthIndexStandard);
    }
}

package xh.nursinghome.system.service;

import xh.nursinghome.system.entity.HealthIndexStandard;

import java.util.List;

/**
 * @author ljy
 * @create 2022-11-09 9:22
 */
public interface HealthIndexStandardService {
    List<HealthIndexStandard> showStandard();

    Boolean updateStandard(HealthIndexStandard healthIndexStandard);
}

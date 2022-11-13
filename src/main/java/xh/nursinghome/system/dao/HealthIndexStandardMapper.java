package xh.nursinghome.system.dao;

import org.apache.ibatis.annotations.Mapper;
import xh.nursinghome.system.entity.HealthIndexStandard;

import java.util.List;

/**
 * @author ljy
 * @create 2022-11-09 9:20
 */
@Mapper
public interface HealthIndexStandardMapper {

    List<HealthIndexStandard> showStandard();

    Boolean updateStandard(HealthIndexStandard healthIndexStandard);
}

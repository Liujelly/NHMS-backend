package xh.nursinghome.system.service;

import xh.nursinghome.system.entity.HealthIndex;
import xh.nursinghome.system.entity.HealthLevel;

import java.util.List;

/**
 * @author ljy
 * @create 2022-11-09 21:22
 */
public interface HealthLevelService {
    List<HealthLevel> showLevel(Integer pageNum,Integer pageSize,Integer orderId,String orderName);
    Boolean addLevel(HealthLevel healthLevel);
    Boolean addName(HealthIndex healthIndex);

    String getLevel(Integer healthIndex);
    Boolean updateAnalysis(HealthLevel healthLevel);



}

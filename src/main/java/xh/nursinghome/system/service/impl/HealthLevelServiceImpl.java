package xh.nursinghome.system.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.entity.HealthIndex;
import xh.nursinghome.system.entity.HealthLevel;
import xh.nursinghome.system.dao.HealthLevelMapper;
import xh.nursinghome.system.service.HealthLevelService;

import java.util.List;

/**
 * @author ljy
 * @create 2022-11-09 21:22
 */
@Service
public class HealthLevelServiceImpl implements HealthLevelService {
    @Autowired
    private HealthLevelMapper healthLevelMapper;

    @Override
    public List<HealthLevel> showLevel(Integer pageNum,Integer pageSize,Integer orderId,String orderName) {
        return healthLevelMapper.showLevel(pageNum,pageSize,orderId,orderName);
    }

    @Override
    public Boolean addLevel(HealthLevel healthLevel) {
        return healthLevelMapper.addLevel(healthLevel);
    }

    @Override
    public Boolean addName(HealthIndex healthIndex) {
        return healthLevelMapper.addName(healthIndex);
    }

    @Override
    public String getLevel(Integer healthIndex) {
        if(healthIndex>90&&healthIndex<=100){
            return "SS";
        }
        else if(healthIndex>80&&healthIndex<=90){
            return "S";
        }
        else if(healthIndex>70&&healthIndex<=80){
            return "A";
        }
        else if(healthIndex>60&&healthIndex<=70){
            return "B";
        }
        else if(healthIndex>50&&healthIndex<=60){
            return "C";
        }
        else if(healthIndex>40&&healthIndex<=50){
            return "D";
        }
        else if(healthIndex>30&&healthIndex<=40){
            return "E";
        }
        else if(healthIndex>20&&healthIndex<=30){
            return "F";
        }
        else if(healthIndex>10&&healthIndex<=20){
            return "G";
        }
        else {
            return "H";
        }
    }

    @Override
    public Boolean updateAnalysis(HealthLevel healthLevel) {
        return healthLevelMapper.updateAnalysis(healthLevel);
    }

}

package xh.nursinghome.system.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.dao.AndHealthOldMapper;
import xh.nursinghome.system.entity.PhysicalExam;
import xh.nursinghome.system.service.AndHealthOldService;

import java.util.List;

/**
 * @author ljy
 * @create 2022-11-14 22:39
 */
@Service
public class AndHealthOldServiceImpl implements AndHealthOldService {
    @Autowired
    private AndHealthOldMapper andHealthOldMapper;

    @Override
    public Integer selectPhyTotal() {
        return andHealthOldMapper.selectPhyTotal();
    }

    @Override
    public List<PhysicalExam> selectAllExam(Integer pageNum, Integer pageSize, Integer orderId, String orderName) {
        return andHealthOldMapper.selectAllExam(pageNum,pageSize,orderId,orderName);
    }

    @Override
    public String getHealthLevelNum(Integer oderId) {
        return andHealthOldMapper.getHealthLevelNum(oderId);
    }

    @Override
    public String getHealthLevelSuggest(Integer oderId) {
        return andHealthOldMapper.getHealthLevelSuggest(oderId);
    }

    @Override
    public String getDiseaseNum(Integer oderId) {
        return andHealthOldMapper.getDiseaseNum(oderId);
    }

    @Override
    public String getDiseaseSuggest(Integer oderId) {
        return andHealthOldMapper.getDiseaseSuggest(oderId);
    }

    @Override
    public String getOrderName(Integer oderId) {
        return andHealthOldMapper.getOrderName(oderId);
    }
}

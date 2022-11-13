package xh.nursinghome.system.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import xh.nursinghome.system.dao.PhysicalExamMapper;
import xh.nursinghome.system.entity.PhysicalExam;
import xh.nursinghome.system.service.PhysicalExamService;

/**
 * @author ljy
 * @create 2022-11-05 22:33
 */
@Service
public class PhysicalExamServiceImpl implements PhysicalExamService {
    @Autowired
    private PhysicalExamMapper physicalExamMapper;


    @Override
    public PhysicalExam selectExam(Integer orderId) {
        PhysicalExam physicalExam=physicalExamMapper.selectExam(orderId);
        return physicalExam;
    }

    @Override
    public Boolean savePE(PhysicalExam physicalExam) {
        return physicalExamMapper.savePE(physicalExam);
    }

    @Override
    public Boolean updatePE(PhysicalExam physicalExam) {
        return physicalExamMapper.updatePE(physicalExam);
    }

    @Override
    public Integer selectPhyTotal() {
        return physicalExamMapper.selectPhyTotal();
    }
}

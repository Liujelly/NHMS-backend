package xh.nursinghome.system.service;

import xh.nursinghome.system.entity.PhysicalExam;

/**
 * @author ljy
 * @create 2022-11-05 22:33
 */
public interface PhysicalExamService {

    PhysicalExam selectExam(Integer orderId);
    Boolean savePE(PhysicalExam physicalExam);
    Boolean updatePE(PhysicalExam physicalExam);
    Integer selectPhyTotal();
}

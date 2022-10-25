package xh.nursinghome.system.service;

import xh.nursinghome.system.entity.ChangingStandardDO;

import java.util.List;

public interface ChaStaService {
    List<ChangingStandardDO> findAll();
    Integer update(List<ChangingStandardDO> changingStandardDOS);
}

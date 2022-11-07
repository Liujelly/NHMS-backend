package xh.nursinghome.system.service;

import java.util.Map;

public interface OperationLogService {
    Map<String,Object> findAll(Integer pageNum, Integer pageSize);
    Map<String,Object> findComplex(Integer pageNum, Integer pageSize,String userCode,String model);
}

package xh.nursinghome.system.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import xh.nursinghome.system.dao.OperationLogDAO;
import xh.nursinghome.system.entity.DormDO;
import xh.nursinghome.system.entity.OperationLogDO;
import xh.nursinghome.system.service.OperationLogService;

import java.util.HashMap;
import java.util.Map;

@Service
public class OperationLogServiceImpl implements OperationLogService {
    @Autowired
    private OperationLogDAO operationLogDAO;
    @Override
    public Map<String, Object> findAll(Integer pageNum, Integer pageSize) {
        Map<String,Object> res=new HashMap<>();
        Page<OperationLogDO> page = PageHelper.startPage(pageNum, pageSize).doSelectPage(() -> operationLogDAO.findAll());
        res.put("data",page.getResult());
        res.put("total",page.getTotal());
        return res;
    }

    @Override
    public Map<String, Object> findComplex(Integer pageNum, Integer pageSize, String userCode, String model) {
        Map<String,Object> res=new HashMap<>();
        Page<OperationLogDO> page = PageHelper.startPage(pageNum, pageSize).doSelectPage(() -> operationLogDAO.findComplex(userCode,model));
        res.put("data",page.getResult());
        res.put("total",page.getTotal());
        return res;
    }
}

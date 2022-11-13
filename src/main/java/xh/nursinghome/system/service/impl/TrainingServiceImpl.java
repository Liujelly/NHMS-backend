package xh.nursinghome.system.service.impl;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.dao.EmployeeMapper;
import xh.nursinghome.system.dao.TrainingMapper;
import xh.nursinghome.system.entity.Employee;
import xh.nursinghome.system.entity.Training;
import xh.nursinghome.system.service.TrainingService;

import javax.annotation.Resource;

@Service
public class TrainingServiceImpl extends ServiceImpl<TrainingMapper, Training> implements TrainingService {

    @Resource
    private TrainingMapper trainingMapper;

    @Resource
    private EmployeeMapper employeeMapper;
    
    @Override
    public IPage<Training> findListByPage(Training training) {
        IPage<Training> iPage = new Page<>(training.getPage(), training.getLimit());
        LambdaQueryWrapper<Training> queryWrapper = new LambdaQueryWrapper<>();
        if (!StringUtils.isEmpty(training.getTrainingContent())) {
            queryWrapper.like(Training::getTrainingContent, training.getTrainingContent());
        }
        IPage<Training> trainingIPage = trainingMapper.selectPage(iPage, queryWrapper);
        for (Training t:trainingIPage.getRecords()) {
            Employee employee = employeeMapper.selectById(t.getEid());
            t.setEname(employee.getEmployeeName());
        }

        return trainingIPage;
    }

    @Override
    public int add(Training training) {
        return trainingMapper.insert(training);
    }

    @Override
    public int delete(Integer id) {
        return trainingMapper.deleteById(id);
    }

    @Override
    public int updateData(Training training) {
        return trainingMapper.updateById(training);
    }
}

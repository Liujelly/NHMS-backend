package xh.nursinghome.system.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.constant.Constant;
import xh.nursinghome.system.dao.EmployeeSalaryMapper;
import xh.nursinghome.system.entity.EmployeeSalary;
import xh.nursinghome.system.service.EmployeeSalaryService;

import javax.annotation.Resource;

@Service
public class EmployeeSalaryServiceImpl extends ServiceImpl<EmployeeSalaryMapper, EmployeeSalary> implements EmployeeSalaryService {
    
    @Resource
    private EmployeeSalaryMapper employeeSalaryMapper;
 

    @Override
    public String addSalary(EmployeeSalary vo) {
        LambdaQueryWrapper<EmployeeSalary> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(EmployeeSalary::getEid, vo.getEid());
        queryWrapper.eq(EmployeeSalary::getSalaryMonth, vo.getSalaryMonth());
        Integer integer = employeeSalaryMapper.selectCount(queryWrapper);
        if (integer > 0) {
            return "当月工资已发放";
        } else {
            if (employeeSalaryMapper.insert(vo) > 0) {
                return Constant.ADDSUCCESS;
            } else {
                return Constant.ADDFAILED;
            }
        }
    }

    @Override
    public Boolean updSalary(EmployeeSalary vo) {
        return employeeSalaryMapper.update(vo, null) > 0;
    }

    @Override
    public IPage<EmployeeSalary> pageEmployeeSalary(EmployeeSalary vo) {
        IPage<EmployeeSalary> iPage = new Page<>(vo.getPage(), vo.getLimit());
        LambdaQueryWrapper<EmployeeSalary> queryWrapper = new LambdaQueryWrapper<>();

        if (!StringUtils.isEmpty(vo.getEmployeeName())) {
            queryWrapper.eq(EmployeeSalary::getEmployeeName, vo.getEmployeeName());
        }
        IPage<EmployeeSalary> iPage1 = employeeSalaryMapper.selectPage(iPage, queryWrapper);
        return iPage1;
    }
}

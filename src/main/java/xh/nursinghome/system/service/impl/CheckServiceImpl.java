package xh.nursinghome.system.service.impl;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.dao.CheckMapper;
import xh.nursinghome.system.dao.EmployeeMapper;
import xh.nursinghome.system.entity.Check;
import xh.nursinghome.system.entity.Employee;
import xh.nursinghome.system.service.CheckService;

import javax.annotation.Resource;
import java.util.List;


@Service
public class CheckServiceImpl extends ServiceImpl<CheckMapper, Check> implements CheckService {


    @Resource
    private CheckMapper checkMapper;

    @Resource
    private EmployeeMapper employeeMapper;

    @Override
    public IPage<Check> findListByPage(Check check) {
        IPage<Check> iPage = new Page<>(check.getPage(), check.getLimit());
        LambdaQueryWrapper<Check> queryWrapper = new LambdaQueryWrapper<>();
        if (!StringUtils.isEmpty(check.getEname())) {
            LambdaQueryWrapper<Employee> employeeQueryWrapper = new LambdaQueryWrapper<>();
            employeeQueryWrapper.like(Employee::getEmployeeName, check.getEname());
            List<Employee> employees = employeeMapper.selectList(employeeQueryWrapper);
            for (Employee e : employees) {
                queryWrapper.eq(Check::getEid, e.getId()).or();
            }
        }
        IPage<Check> checkIPage = checkMapper.selectPage(iPage, queryWrapper);
        for (Check t : checkIPage.getRecords()) {
            Employee employee = employeeMapper.selectById(t.getEid());
            //做判空处理
            if(t.getEid()==null){
                continue;
            }
            t.setEname(employee.getEmployeeName());
        }

        return checkIPage;
    }

    @Override
    public int add(Check check) {
        return checkMapper.insert(check);
    }

    @Override
    public int delete(Integer id) {
        return checkMapper.deleteById(id);
    }

    @Override
    public int updateData(Check check) {
        return checkMapper.updateById(check);
    }    
}

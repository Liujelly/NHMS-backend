package xh.nursinghome.system.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.constant.Constant;
import xh.nursinghome.system.dao.DeptMapper;
import xh.nursinghome.system.dao.EmployeeMapper;
import xh.nursinghome.system.entity.Dept;
import xh.nursinghome.system.entity.Employee;
import xh.nursinghome.system.entity.EmployeeCount;
import xh.nursinghome.system.service.EmployeeService;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;


@Service
public class EmployeeServiceImpl extends ServiceImpl<EmployeeMapper, Employee> implements EmployeeService {


    @Resource
    private EmployeeMapper employeeMapper;

    @Resource
    private DeptMapper deptMapper;

    @Override
    public IPage<EmployeeCount> getAllEmployee(Employee employee) {
        IPage<EmployeeCount> iPage = new Page<>();
        List<EmployeeCount> allEmployee = employeeMapper.getAllEmployee();
        return iPage.setRecords(allEmployee);
    }

    @Override
    public IPage<Employee> findListByPage(Employee employee) {
        IPage<Employee> iPage = new Page<>(employee.getPage(), employee.getLimit());
        LambdaQueryWrapper<Employee> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.ne(Employee::getDeleted, Constant.DELETED);
        if (!StringUtils.isEmpty(employee.getEmployeeName())) {
            queryWrapper.like(Employee::getEmployeeName, employee.getEmployeeName());
        }
        IPage<Employee> employeeIPage = employeeMapper.selectPage(iPage, queryWrapper);

        for (Employee employee1 : employeeIPage.getRecords()) {
            Dept dept = deptMapper.selectById(employee1.getDeptId());
            if(dept == null){
                continue;
            }
            employee1.setDeptName(dept.getDeptName());
        }
        return employeeIPage;
    }

    @Override
    public int add(Employee employee) {
        employee.setDeleted(Constant.UNDELETED);
        Date now=new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
        String time = sdf.format(now);
        String idNO=employee.getIdNo();
        String idNoTwo = idNO.substring(idNO.length() -2);
        employee.setEmployeeId(time+idNoTwo);
        employee.setPhotoUrl("b26f8c7967d34b47932ba1e5cca93d7c.png");
        employee.setCreateTime(new Date());
        employee.setUpdateTime(new Date());
        return employeeMapper.insert(employee);
    }

    @Override
    public int delete(Integer id) {
        Employee employee = new Employee();
        employee.setId(id);
        employee.setDeleted(Constant.DELETED);
        return employeeMapper.updateById(employee);
    }
    @Override
    public int updateData(Employee employee) {
        if (!StringUtils.isEmpty(employee.getPositionName())) {
            Employee employee1 = employeeMapper.selectById(employee.getId());

        }
        return employeeMapper.updateById(employee);
    }


}

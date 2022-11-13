package xh.nursinghome.system.service.impl;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.dao.EmployeeAttendanceMapper;
import xh.nursinghome.system.dao.EmployeeMapper;
import xh.nursinghome.system.entity.Employee;
import xh.nursinghome.system.entity.EmployeeAttendance;
import xh.nursinghome.system.entity.EmployeeAttendanceCount;
import xh.nursinghome.system.service.EmployeeAttendanceService;

import javax.annotation.Resource;
import java.util.HashMap;

import java.util.List;
import java.util.Map;


@Service
public class EmployeeAttendanceServiceImpl extends ServiceImpl<EmployeeAttendanceMapper, EmployeeAttendance> implements EmployeeAttendanceService {

    @Resource
    private EmployeeAttendanceMapper employeeAttendanceMapper;
    @Resource
    private EmployeeMapper employeeMapper;


    @Override
    public Boolean addAttendance(EmployeeAttendance vo) {
        return employeeAttendanceMapper.insert(vo) > 0;
    }

    @Override
    public IPage<EmployeeAttendance> pageAttendance(EmployeeAttendance vo) {
        IPage<EmployeeAttendance> iPage = new Page<>(vo.getPage(), vo.getLimit());
        IPage<EmployeeAttendance> iPage1 = employeeAttendanceMapper.selectPage(iPage, null);
        if (!iPage1.getRecords().isEmpty()) {
            for (EmployeeAttendance employeeAttendance : iPage1.getRecords()) {
                LambdaQueryWrapper<Employee> queryWrapper = new LambdaQueryWrapper<>();
                queryWrapper.eq(Employee::getId, employeeAttendance.getEid());
                Employee employee = employeeMapper.selectOne(queryWrapper);
                employeeAttendance.setEname(employee.getEmployeeName());

            }
        }
        return iPage1;
    }

    @Override
    public IPage<EmployeeAttendanceCount> getAntt(EmployeeAttendance vo) {
        IPage<EmployeeAttendanceCount> iPage = new Page<>();
        List<EmployeeAttendanceCount> att = employeeAttendanceMapper.getAtt();
        iPage.setRecords(att);
        return iPage;
    }

    @Override
    public Map<String, String> searchInfo(String id, String mounth) {
        LambdaQueryWrapper<EmployeeAttendance> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(EmployeeAttendance::getEid, id);
        queryWrapper.eq(EmployeeAttendance::getAttendance, "2");
        queryWrapper.apply("date_format(go_work_time,'%Y-%m')='" + mounth+"'");
        LambdaQueryWrapper<EmployeeAttendance> queryWrapper3 = new LambdaQueryWrapper<>();
        queryWrapper3.eq(EmployeeAttendance::getEid, id);
        queryWrapper3.eq(EmployeeAttendance::getAttendance, "5");
        queryWrapper3.apply("date_format(go_work_time,'%Y-%m')='" + mounth+"'");
        LambdaQueryWrapper<EmployeeAttendance> queryWrapper2 = new LambdaQueryWrapper<>();
        queryWrapper2.eq(EmployeeAttendance::getEid, id);
        queryWrapper2.eq(EmployeeAttendance::getAttendance, "4");
        queryWrapper2.apply("date_format(go_work_time,'%Y-%m')='" + mounth+"'");
        LambdaQueryWrapper<EmployeeAttendance> queryWrapper1 = new LambdaQueryWrapper<>();
        queryWrapper1.eq(EmployeeAttendance::getEid, id);
        queryWrapper1.eq(EmployeeAttendance::getAttendance, "3");
        queryWrapper1.apply("date_format(go_work_time,'%Y-%m')='" + mounth+"'");
        Map<String, String> map = new HashMap<>();
        map.put("count1", String.valueOf(employeeAttendanceMapper.selectCount(queryWrapper)));
        map.put("count2", String.valueOf(employeeAttendanceMapper.selectCount(queryWrapper1)));
        map.put("count3", String.valueOf(employeeAttendanceMapper.selectCount(queryWrapper2)));
        map.put("count4", String.valueOf(employeeAttendanceMapper.selectCount(queryWrapper3)));
        return map;
    }

}

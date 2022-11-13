package xh.nursinghome.system.service.impl;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.dao.EmployeeMapper;
import xh.nursinghome.system.dao.RewardsAndPunishmentsMapper;
import xh.nursinghome.system.entity.Employee;
import xh.nursinghome.system.entity.RewardsAndPunishments;
import xh.nursinghome.system.service.RewardsAndPunishmentsService;

import javax.annotation.Resource;
import java.util.List;


@Service
public class RewardsAndPunishmentsServiceImpl extends ServiceImpl<RewardsAndPunishmentsMapper, RewardsAndPunishments> implements RewardsAndPunishmentsService {

    @Resource
    private RewardsAndPunishmentsMapper rewardsAndPunishmentsMapper;

    @Resource
    private EmployeeMapper employeeMapper;

    @Override
    public IPage<RewardsAndPunishments> findListByPage(RewardsAndPunishments rewardsAndPunishments) {
        IPage<RewardsAndPunishments> iPage = new Page<>(rewardsAndPunishments.getPage(), rewardsAndPunishments.getLimit());
        LambdaQueryWrapper<RewardsAndPunishments> queryWrapper = new LambdaQueryWrapper<>();
        if (!StringUtils.isEmpty(rewardsAndPunishments.getEname())) {
            LambdaQueryWrapper<Employee> employeeLambdaQueryWrapper = new LambdaQueryWrapper<>();
            employeeLambdaQueryWrapper.like(Employee::getEmployeeName, rewardsAndPunishments.getEname());
            List<Employee> employees = employeeMapper.selectList(employeeLambdaQueryWrapper);
            for (Employee e : employees) {
                queryWrapper.eq(RewardsAndPunishments::getEid, e.getId()).or();
            }
        }
        IPage<RewardsAndPunishments> rewardsAndPunishmentsIPage = rewardsAndPunishmentsMapper.selectPage(iPage, queryWrapper);
        for (RewardsAndPunishments t : rewardsAndPunishmentsIPage.getRecords()) {
            Employee employee = employeeMapper.selectById(t.getEid());
           //做判空处理
            if(t.getEid()==null){
                continue;
            }
            t.setEname(employee.getEmployeeName());
        }

        return rewardsAndPunishmentsIPage;
    }

    @Override
    public int add(RewardsAndPunishments rewardsAndPunishments) {
        return rewardsAndPunishmentsMapper.insert(rewardsAndPunishments);
    }

    @Override
    public int delete(Integer id) {
        return rewardsAndPunishmentsMapper.deleteById(id);
    }

    @Override
    public int updateData(RewardsAndPunishments rewardsAndPunishments) {
        return rewardsAndPunishmentsMapper.updateById(rewardsAndPunishments);
    }
}

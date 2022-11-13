package xh.nursinghome.system.service.impl;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.dao.DeptMapper;
import xh.nursinghome.system.entity.Dept;
import xh.nursinghome.system.service.DeptService;

import javax.annotation.Resource;
import java.util.List;


@Service
public class DeptServiceImpl extends ServiceImpl<DeptMapper, Dept> implements DeptService {
    @Resource
    private DeptMapper deptMapper;

    @Override
    public IPage<Dept> findListByPage(Dept dept) {
        IPage<Dept> iPage = new Page<>(dept.getPage(), dept.getLimit());
        LambdaQueryWrapper<Dept> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.select(Dept::getDeptName, Dept::getId, Dept::getDeptDescribe);
        if (!StringUtils.isEmpty(dept.getDeptName())) {
            queryWrapper.like(Dept::getDeptName, dept.getDeptName());
        }
        return deptMapper.selectPage(iPage, queryWrapper);
    }

    @Override
    public int add(Dept dept) {
        return deptMapper.insert(dept);
    }

    @Override
    public int delete(Integer id) {
        return deptMapper.deleteById(id);
    }

    @Override
    public int updateData(Dept dept) {
        return deptMapper.updateById(dept);
    }

    @Override
    public List<Dept> getAllDept() {
        LambdaQueryWrapper<Dept> q = new LambdaQueryWrapper<>();
        q.select(Dept::getDeptName, Dept::getId);
        return deptMapper.selectList(q);
    }

}

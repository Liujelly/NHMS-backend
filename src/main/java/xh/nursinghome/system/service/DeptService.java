package xh.nursinghome.system.service;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import xh.nursinghome.system.entity.Dept;

import java.util.List;

public interface DeptService extends IService<Dept> {

    /**
     * 查询分页数据
     *
     * @param dept
     * @return IPage<Dept>
     */
    IPage<Dept> findListByPage(Dept dept);

    /**
     * 添加
     *
     * @param dept 
     * @return int
     */
    int add(Dept dept);

    /**
     * 删除
     *
     * @param id 主键
     * @return int
     */
    int delete(Integer id);

    /**
     * 修改
     *
     * @param dept 
     * @return int
     */
    int updateData(Dept dept);


    /**
     * 获取全部部门
     * @return
     */
    List<Dept> getAllDept();
}

package xh.nursinghome.system.service;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import xh.nursinghome.system.entity.Employee;
import xh.nursinghome.system.entity.EmployeeCount;

public interface EmployeeService extends IService<Employee> {

    /**
     * 查询分页数据
     *
     * @param employee
     * @return IPage<Employee>
     */
    IPage<Employee> findListByPage(Employee employee);

    /**
     * 获取员工数量
     *
     * @param employee
     * @return IPage<Employee>
     */
    IPage<EmployeeCount> getAllEmployee(Employee employee);

    /**
     * 添加
     *
     * @param employee 
     * @return int
     */
    int add(Employee employee);

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
     * @param employee 
     * @return int
     */
    int updateData(Employee employee);

}

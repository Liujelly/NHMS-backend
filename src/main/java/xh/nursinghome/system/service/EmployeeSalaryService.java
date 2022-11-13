package xh.nursinghome.system.service;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import xh.nursinghome.system.entity.EmployeeSalary;

public interface EmployeeSalaryService extends IService<EmployeeSalary> {

    /**
     * 添加员工工资
     *
     * @param vo
     * @return
     **/
    String addSalary(EmployeeSalary vo);

    /**
     * 更新员工工资
     *
     * @param vo
     * @return
     */
    Boolean updSalary(EmployeeSalary vo);

    /**
     * 分页查询员工工资
     *
     * @param vo
     * @return
     */
    IPage<EmployeeSalary> pageEmployeeSalary(EmployeeSalary vo);
}

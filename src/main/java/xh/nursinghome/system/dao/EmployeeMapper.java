package xh.nursinghome.system.dao;



import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import xh.nursinghome.system.entity.Employee;
import xh.nursinghome.system.entity.EmployeeCount;

import java.util.List;

@Mapper
public interface EmployeeMapper extends BaseMapper<Employee> {

    @Select("SELECT\n" +
            "\tsum( a.rs ) rs,\n" +
            "\tsum( a.cw ) cw,\n" +
            "\tsum( a.xz ) xz,\n" +
            "\tsum( a.sc ) sc \n" +
            "FROM\n" +
            "\t(\n" +
            "SELECT\n" +
            "\tcount( IF ( dept_id = 3, 1, NULL ) ) rs,\n" +
            "\tcount( IF ( dept_id = 4, 1, NULL ) ) cw,\n" +
            "\tcount( IF ( dept_id = 5, 1, NULL ) ) xz,\n" +
            "\tcount( IF ( dept_id = 6, 1, NULL ) ) sc \n" +
            "FROM\n" +
            "\t`sys_employee` \n" +
            "GROUP BY\n" +
            "\tdept_id \n" +
            "\t) a")

    List<EmployeeCount> getAllEmployee();
}

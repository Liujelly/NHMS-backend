package xh.nursinghome.system.dao;



import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import xh.nursinghome.system.entity.EmployeeAttendance;
import xh.nursinghome.system.entity.EmployeeAttendanceCount;

import java.util.List;

@Mapper
public interface EmployeeAttendanceMapper extends BaseMapper<EmployeeAttendance> {

    @Select("SELECT\n" +
            "\tsum( a.zc ) zc,\n" +
            "\tsum( a.cd ) cd,\n" +
            "\tsum( a.zt ) zt,\n" +
            "\tsum( a.qq ) qq,\n" +
            "\tsum( a.qj ) qj \n" +
            "FROM\n" +
            "\t(\n" +
            "SELECT\n" +
            "\tcount( IF ( attendance = 1, 1, NULL ) ) zc,\n" +
            "\tcount( IF ( attendance = 2, 1, NULL ) ) cd,\n" +
            "\tcount( IF ( attendance = 3, 1, NULL ) ) zt,\n" +
            "\tcount( IF ( attendance = 4, 1, NULL ) ) qq,\n" +
            "\tcount( IF ( attendance = 5, 1, NULL ) ) qj \n" +
            "FROM\n" +
            "\t`sys_employee_attendance` \n" +
            "GROUP BY\n" +
            "\tattendance \n" +
            "\t) a")
    List<EmployeeAttendanceCount> getAtt();
}

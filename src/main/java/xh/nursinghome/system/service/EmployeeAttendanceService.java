package xh.nursinghome.system.service;




import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import xh.nursinghome.system.entity.EmployeeAttendance;
import xh.nursinghome.system.entity.EmployeeAttendanceCount;

import java.util.Map;


public interface EmployeeAttendanceService extends IService<EmployeeAttendance> {

    /**
     * 添加出勤记录
     *
     * @param vo
     * @return
     */
    Boolean addAttendance(EmployeeAttendance vo);

    /**
     * 分页获取出勤记录
     *
     * @param vo
     * @return
     */
    IPage<EmployeeAttendance> pageAttendance(EmployeeAttendance vo);

    /**
     * 获取出勤情况
     * @param id,mounth
     * @return
     */
    Map<String ,String> searchInfo(String id, String mounth);

    IPage<EmployeeAttendanceCount> getAntt(EmployeeAttendance vo);
}

package xh.nursinghome.system.service;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import xh.nursinghome.system.entity.Check;

public interface CheckService extends IService<Check> {

    /**
     * 查询分页数据
     *
     * @param check
     * @return IPage<Check>
     */
    IPage<Check> findListByPage(Check check);

    /**
     * 添加
     *
     * @param check
     * @return int
     */
    int add(Check check);

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
     * @param check
     * @return int
     */
    int updateData(Check check);
}


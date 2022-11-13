package xh.nursinghome.system.service;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import xh.nursinghome.system.entity.Training;

public interface TrainingService extends IService<Training> {


    /**
     * 查询分页数据
     *
     * @param training
     * @return IPage<Training>
     */
    IPage<Training> findListByPage(Training training);

    /**
     * 添加
     *
     * @param training
     * @return int
     */
    int add(Training training);

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
     * @param training
     * @return int
     */
    int updateData(Training training);
}

package xh.nursinghome.system.service;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import xh.nursinghome.system.entity.RewardsAndPunishments;

public interface RewardsAndPunishmentsService extends IService<RewardsAndPunishments> {
    /**
     * 查询分页数据
     *
     * @param rewardsAndPunishments
     * @return IPage<RewardsAndPunishments>
     */
    IPage<RewardsAndPunishments> findListByPage(RewardsAndPunishments rewardsAndPunishments);

    /**
     * 添加
     *
     * @param rewardsAndPunishments
     * @return int
     */
    int add(RewardsAndPunishments rewardsAndPunishments);

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
     * @param rewardsAndPunishments
     * @return int
     */
    int updateData(RewardsAndPunishments rewardsAndPunishments);
}

package xh.nursinghome.system.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import xh.nursinghome.system.entity.reserve;

import java.util.List;

@Mapper
@Repository
public interface ReserveMapper {
    List<reserve> SelectReserve(@Param("pageNum") Integer pageNum, @Param("pageSize") Integer pageSize, @Param("name") String name);
    Integer total(@Param("name") String name);
    Integer InsertReserve(reserve reserve);
    Integer DeleteReserve(@Param("id")Integer id);
    Integer UpdateReserve(reserve reserve);
}

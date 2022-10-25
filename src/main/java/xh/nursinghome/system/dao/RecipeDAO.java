package xh.nursinghome.system.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import xh.nursinghome.system.entity.RecipeDO;

import java.util.List;

@Mapper
@Repository
public interface RecipeDAO {
    List<RecipeDO> findAll();
    Integer delete(@Param("recipeId") int recipeId);
    Integer add(RecipeDO recipeDO);
    RecipeDO selectByName(@Param("name") String name);
    Integer update(RecipeDO recipeDO);
    RecipeDO selectByRecipeId(@Param("recipeId") int recipeId);
}

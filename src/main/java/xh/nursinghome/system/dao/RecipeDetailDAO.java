package xh.nursinghome.system.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import xh.nursinghome.system.entity.RecipeDetailDO;

import java.util.List;

@Mapper
@Repository
public interface RecipeDetailDAO {
    List<RecipeDetailDO> findAll();
    List<RecipeDetailDO> findByRecipeId(@Param("recipeId") int RecipeId);
    Integer add(@Param("recipeId") int RecipeId);
    Integer updateById(RecipeDetailDO recipeDetailDO);
    Integer deleteByRecipeId(@Param("recipeId") int RecipeId);
}

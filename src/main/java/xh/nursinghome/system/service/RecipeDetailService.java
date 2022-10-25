package xh.nursinghome.system.service;

import org.apache.ibatis.annotations.Param;
import xh.nursinghome.system.entity.RecipeDetailDO;

import java.util.List;
import java.util.Map;

public interface RecipeDetailService {
    List<RecipeDetailDO> findAll();
    Map<String,Object> findByRecipeId(int index);
    Integer add(RecipeDetailDO recipeDetailDO);
    Integer updateById(List<RecipeDetailDO> recipeDetailDOS);
}

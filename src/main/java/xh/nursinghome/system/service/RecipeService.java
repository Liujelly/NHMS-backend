package xh.nursinghome.system.service;

import org.apache.ibatis.annotations.Param;
import xh.nursinghome.system.entity.RecipeDO;

import java.util.List;
import java.util.Map;

public interface RecipeService {
    Map<String,Object> findAll();
    Integer delete(@Param("recipeId") int recipeId);
    Integer add(RecipeDO recipeDO);
}

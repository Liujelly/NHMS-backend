package xh.nursinghome.system.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.dao.RecipeDAO;
import xh.nursinghome.system.dao.RecipeDetailDAO;
import xh.nursinghome.system.entity.RecipeDO;
import xh.nursinghome.system.entity.RecipeDetailDO;
import xh.nursinghome.system.service.RecipeDetailService;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Service
public class RecipeDetailServiceImpl implements RecipeDetailService {
    @Autowired
    private RecipeDAO recipeDAO;
    @Autowired
    private RecipeDetailDAO recipeDetailDAO;

    @Override
    public List<RecipeDetailDO> findAll() {
        return recipeDetailDAO.findAll();
    }

    @Override
    public Map<String, Object> findByRecipeId(int index) {
        Map<String,Object> res=new HashMap<>();
        List<RecipeDO> recipeDOS=recipeDAO.findAll();
        int recipeId=recipeDOS.get(index).getRecipeId();
        List<RecipeDetailDO> recipeDetailDOS=recipeDetailDAO.findByRecipeId(recipeId);
        res.put("data",recipeDetailDOS);
        return res;
    }

    @Override
    public Integer add(RecipeDetailDO recipeDetailDO) {
        return null;
    }

    @Override
    public Integer updateById(List<RecipeDetailDO> recipeDetailDOS) {
        int recipeId=recipeDetailDOS.get(0).getRecipeId();
        Integer res=0;
        for(RecipeDetailDO recipeDetailDO:recipeDetailDOS){
            res+=recipeDetailDAO.updateById(recipeDetailDO);
        }
        RecipeDO recipeDO=recipeDAO.selectByRecipeId(recipeId);
        Date now=new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time = sdf.format(now);
        recipeDO.setGmtModified(time);
        res+=recipeDAO.update(recipeDO);

        return res;
    }


}

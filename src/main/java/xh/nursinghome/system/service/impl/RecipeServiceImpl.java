package xh.nursinghome.system.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.dao.RecipeDAO;
import xh.nursinghome.system.dao.RecipeDetailDAO;
import xh.nursinghome.system.entity.RecipeDO;
import xh.nursinghome.system.entity.RecipeDetailDO;
import xh.nursinghome.system.module.Option;
import xh.nursinghome.system.service.RecipeService;

import java.text.SimpleDateFormat;
import java.util.*;

@Service
public class RecipeServiceImpl implements RecipeService {
    @Autowired
    private RecipeDAO recipeDAO;
    @Autowired
    private RecipeDetailDAO recipeDetailDAO;
    @Override
    public Map<String, Object> findAll() {
        Map<String,Object> res=new HashMap<>();
        List<RecipeDO> recipeDOS=recipeDAO.findAll();
        List<Option> options=new ArrayList<>();
        for(int i=0;i< recipeDOS.size();i++){
            Option option=new Option();
            option.setValue(i);
            option.setLabel(recipeDOS.get(i).getName());
            options.add(option);
        }
        res.put("options",options);

        return res;
    }

    @Override
    public Integer delete(int recipeId) {
        Integer res=0;
        res+=recipeDAO.delete(recipeId);
        res+=recipeDetailDAO.deleteByRecipeId(recipeId);

        return res;

    }

    @Override
    public Integer add(RecipeDO recipeDO) {
        Date now=new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time = sdf.format(now);
        recipeDO.setGmtCreated(time);
        recipeDO.setGmtModified(time);
        Integer res=recipeDAO.add(recipeDO);

        int recipeId=recipeDAO.selectByName(recipeDO.getName()).getRecipeId();
        res+=recipeDetailDAO.add(recipeId);
        return res;
    }
}

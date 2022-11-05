package xh.nursinghome.system.controller;

import cn.hutool.poi.excel.ExcelUtil;
import cn.hutool.poi.excel.ExcelWriter;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.dao.RecipeDAO;
import xh.nursinghome.system.entity.DishDO;
import xh.nursinghome.system.entity.RecipeDO;
import xh.nursinghome.system.entity.RecipeDetailDO;
import xh.nursinghome.system.service.DishService;
import xh.nursinghome.system.service.RecipeDetailService;
import xh.nursinghome.system.service.RecipeService;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
public class RecipeController {
    @Autowired
    private DishService dishService;
    @Autowired
    private RecipeService recipeService;
    @Autowired
    private RecipeDetailService recipeDetailService;
    @Autowired
    private RecipeDAO recipeDAO;


    @GetMapping("/dishFindAll")
    public Map<String,Object> dishFindAll(@RequestParam Integer pageNum, @RequestParam Integer pageSize){
        Map<String,Object> res=new HashMap<>();
        Page<DishDO> page = PageHelper.startPage(pageNum, pageSize).doSelectPage(() -> dishService.findAll());
        res.put("data",page.getResult());
        res.put("total",page.getTotal());
        return res;
    }
    @PostMapping("/dishAdd")
    public boolean dishAdd(@RequestBody DishDO dishDO){
        Integer res=dishService.add(dishDO);
        if(res==1){
            return true;
        }else{return false;}
    }

    @PostMapping("/dishUpdate")
    public boolean dishUpdate(@RequestBody DishDO dishDO){
        Integer res=dishService.update(dishDO);
        if(res==1){
            return true;
        }else{return false;}
    }

    @GetMapping("/dishFindComplex")
    public Map<String,Object> dishFindComplex(@RequestParam Integer pageNum, @RequestParam Integer pageSize,
                                              @RequestParam String input1,@RequestParam String input2,@RequestParam String input3,@RequestParam String input4){
        Map<String,Object> res=new HashMap<>();
        Page<DishDO> page = PageHelper.startPage(pageNum, pageSize).doSelectPage(() -> dishService.findComplex(input1,input2,input3,input4));
        res.put("data",page.getResult());
        res.put("total",page.getTotal());
        return res;
    }

    @GetMapping("/dishExport")
    public void dishExport(HttpServletResponse response)throws Exception{
        List<DishDO> list=dishService.findAll();
        ExcelWriter writer= ExcelUtil.getWriter(true);
        writer.addHeaderAlias("name","菜名");
        writer.addHeaderAlias("cuisine","菜系");
        writer.addHeaderAlias("ingredients","主料");
        writer.addHeaderAlias("taste","口味");
        writer.addHeaderAlias("tabooCrowds","禁忌人群");
        writer.addHeaderAlias("method","制作方法");
        writer.addHeaderAlias("gmtCreated","创建时间");
        writer.addHeaderAlias("gmtModified","修改时间");

        writer.write(list,true);

        response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;charset=utf-8");
        String fileName= URLEncoder.encode("菜品数据","UTF-8");
        response.setHeader("Content-Disposition","attachment;filename="+fileName+".xlsx");

        ServletOutputStream out=response.getOutputStream();
        writer.flush(out,true);
        out.close();
        writer.close();
    }

    //以下是食谱管理
    @GetMapping("/findRecipe")
    public Map<String,Object> findRecipe(){
        Map<String,Object> res=recipeService.findAll();
        return res;
    }

    @GetMapping("/findRecipeDetail")
    public Map<String,Object> findRecipeDetail(@RequestParam int index){
        Map<String,Object> res=recipeDetailService.findByRecipeId(index);
        return res;
    }

    @PostMapping("/addRecipe")
    public boolean addRecipe(@RequestBody RecipeDO recipeDO){
        List<RecipeDO> recipeDOS=recipeDAO.findAll();
        String name=recipeDO.getName();
        for(RecipeDO recipeDO1:recipeDOS){
            if(recipeDO1.getName().equals(name)){
                return false;
            }
        }
        Integer res=recipeService.add(recipeDO);

        if(res==4){
            return true;
        }else{return false;}
    }
    @PostMapping("/updateRecipeDetail")
    public boolean updateRecipeDetail(@RequestBody List<RecipeDetailDO> recipeDetailDOS){
        Integer res=recipeDetailService.updateById(recipeDetailDOS);
        if(res==4){
            return true;
        } else{
            return false;
        }

    }
    @PostMapping("/deleteRecipe")
    public boolean deleteRecipe(@RequestBody List<RecipeDetailDO> recipeDetailDOS){
        int recipeId=recipeDetailDOS.get(0).getRecipeId();
        Integer res=recipeService.delete(recipeId);
        if(res==4){
            return true;
        } else{
            return false;
        }
    }

    @GetMapping("/RecipeExport")
    public void RecipeExport(HttpServletResponse response)throws Exception{
        List<RecipeDetailDO> list=recipeDetailService.findAll();
        ExcelWriter writer= ExcelUtil.getWriter(true);
        writer.addHeaderAlias("recipeId","菜谱id");
        writer.addHeaderAlias("time","饭点");
        writer.addHeaderAlias("Mon","周一");
        writer.addHeaderAlias("Tue","周二");
        writer.addHeaderAlias("Wed","周三");
        writer.addHeaderAlias("Thu","周四");
        writer.addHeaderAlias("Fri","周五");
        writer.addHeaderAlias("Sat","周六");
        writer.addHeaderAlias("Sun","周日");

        writer.write(list,true);

        response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;charset=utf-8");
        String fileName= URLEncoder.encode("食谱数据","UTF-8");
        response.setHeader("Content-Disposition","attachment;filename="+fileName+".xlsx");

        ServletOutputStream out=response.getOutputStream();
        writer.flush(out,true);
        out.close();
        writer.close();
    }

}

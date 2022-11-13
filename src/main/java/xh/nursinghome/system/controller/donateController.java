package xh.nursinghome.system.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.aop.OperationLogAnnotation;
import xh.nursinghome.system.dao.DonateMapper;
import xh.nursinghome.system.entity.donate;

import java.util.HashMap;

import java.util.List;
import java.util.Map;


@RestController
public class donateController {

    @Autowired
    private DonateMapper donateMapper;
    @OperationLogAnnotation(operModul = "接待管理-捐赠信息管理",operType = "修改",operDesc = "修改捐赠信息")
    @GetMapping("/pagedonate")
    public Map<String, Object> findPage(
            @RequestParam Integer pageNum,
            @RequestParam Integer pageSize
    ){
        pageNum=(pageNum-1)*pageSize;
        List<donate> data=donateMapper.selectPage(pageNum,pageSize);
        Integer total=donateMapper.selectTotal();
        Map<String, Object>res=new HashMap<>();
        res.put("data",data);
        res.put("total",total);
        return res;
    }
    @OperationLogAnnotation(operModul = "接待管理-捐赠信息管理",operType = "新增",operDesc = "新增捐赠信息")
    @PostMapping("/add")
public Integer addedit(@RequestBody donate donate)
    {
        if (donate.getdId()!=null)
        {
            return donateMapper.update(donate);
        }
        else{
            return donateMapper.insert(donate);
        }
    }
@DeleteMapping("/delete/{dId}")
    public Integer delete(@PathVariable Integer dId)
{
    return donateMapper.deleteById(dId);
}


}

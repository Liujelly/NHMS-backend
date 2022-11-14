package xh.nursinghome.system.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xh.nursinghome.system.entity.price;
import xh.nursinghome.system.service.impl.PriceService;

import java.util.Map;

@RestController
public class PriceController {
    @Autowired
    PriceService priceService;
    @GetMapping("/pageprice")
    public Map<String,Object> SelectCheckInController(@RequestParam Integer pageNum, @RequestParam Integer pageSize, @RequestParam String name){
        return priceService.SelectElderlyService(pageNum,pageSize,name);
    }
    @PostMapping("/price")
    public Integer UpIn(@RequestBody price price){
        return priceService.UpIn(price);
    }
    @DeleteMapping("/price/{id}")
    public Integer delete(@PathVariable("id")Integer id)
    {
        return priceService.delete(id);
    }
}

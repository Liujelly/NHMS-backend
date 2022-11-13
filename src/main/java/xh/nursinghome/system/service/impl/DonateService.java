package xh.nursinghome.system.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.dao.DonateMapper;
import xh.nursinghome.system.entity.donate;


@Service
public class DonateService {

    @Autowired
    DonateMapper donateMapper;

    public boolean findUsers(donate donate) {
      String users= donateMapper.findUsers(donate);

       return true;
    }

}

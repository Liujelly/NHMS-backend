package xh.nursinghome.system.service.impl;

import cn.hutool.core.net.NetUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import xh.nursinghome.system.dao.loginLogDAO;
import xh.nursinghome.system.entity.loginLog;
import xh.nursinghome.system.service.loginLogService;
import xh.nursinghome.system.utils.IPUtil;

import java.net.InetAddress;
import java.rmi.UnknownHostException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Service
public class loginLogServiceImpl implements loginLogService {
    @Autowired
    loginLogDAO loginLogDao;
    @Override
    public Integer loginLogSave(loginLog loginL) throws UnknownHostException, java.net.UnknownHostException {

        Date now=new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time = sdf.format(now);
        loginL.setTime(time);

        IPUtil ipUtil=new IPUtil();
        loginL.setIp(ipUtil.getLocalIP());

        InetAddress inetAddress=InetAddress.getLocalHost();
        String localMacAddress= NetUtil.getMacAddress(inetAddress);
        loginL.setMac(localMacAddress);

        List<loginLog> loginLogs=loginLogDao.findByAdmin(loginL.getUserName());
        loginL.setNum(loginLogs.size()+1);
        Integer res=loginLogDao.insertLoginLog(loginL);
        return res;
    }

}

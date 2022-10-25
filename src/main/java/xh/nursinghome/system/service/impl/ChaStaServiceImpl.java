package xh.nursinghome.system.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import xh.nursinghome.system.dao.ChangingStandardDAO;
import xh.nursinghome.system.entity.ChangingStandardDO;
import xh.nursinghome.system.service.ChaStaService;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class ChaStaServiceImpl implements ChaStaService {
    @Autowired
    private ChangingStandardDAO changingStandardDAO;

    @Override
    public List<ChangingStandardDO> findAll() {
        List<ChangingStandardDO> changingStandardDOS=changingStandardDAO.findAll();
        return changingStandardDOS;
    }

    @Override
    public Integer update(List<ChangingStandardDO> changingStandardDOS) {
        Date now=new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String gmtModified = sdf.format(now);
        Integer count=0;
        for(ChangingStandardDO changingStandardDO:changingStandardDOS){
            changingStandardDO.setGmtModified(gmtModified);
            String str = changingStandardDO.getCareLevel();
            String str2 = str.replaceAll(" ","");
            changingStandardDO.setCareLevel(str2);
            Integer judge=changingStandardDAO.update(changingStandardDO);
            if (judge==0){break;}
            count+=judge;
        }
        return count;
    }
}

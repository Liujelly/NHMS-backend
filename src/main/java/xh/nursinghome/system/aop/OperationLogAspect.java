package xh.nursinghome.system.aop;


import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import xh.nursinghome.system.utils.HttpContextUtils;
import xh.nursinghome.system.utils.IPUtil;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import xh.nursinghome.system.dao.OperationLogDAO;
import xh.nursinghome.system.entity.OperationLogDO;
import xh.nursinghome.system.utils.JwtTokenUtil;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.lang.reflect.Method;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;


/**
 * @author lyz
 * @title: OperationAspect
 * @projectName springcloud
 * @date 2020/9/23
 * @description: 操作日志切面处理类
 */
@Aspect
@Component
public class OperationLogAspect {
    @Autowired
    private OperationLogDAO logDao;
    private static SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    @Pointcut("@annotation(xh.nursinghome.system.aop.OperationLogAnnotation)")
    public void pointcut() { }

    @Around("pointcut()")
    public Object around(ProceedingJoinPoint point) {
        Object result = null;
        long beginTime = System.currentTimeMillis();
        try {
            // 执行方法
            result = point.proceed();
        } catch (Throwable e) {
            e.printStackTrace();
        }
        // 执行时长(毫秒)
        long time = System.currentTimeMillis() - beginTime;
        // 保存日志
        saveLog(point, time);
        return result;
    }

    private void saveLog(ProceedingJoinPoint joinPoint, long time) {
        MethodSignature signature = (MethodSignature) joinPoint.getSignature();
        Method method = signature.getMethod();
        OperationLogDO systemLog = new OperationLogDO();
        OperationLogAnnotation logAnnotation = method.getAnnotation(OperationLogAnnotation.class);
        if (logAnnotation != null) {
            //获取注解@Log在controller上的描述
            systemLog.setModel(logAnnotation.operModul());
            systemLog.setType(logAnnotation.operType());
            systemLog.setDescription(logAnnotation.operDesc());


        }

        // 获取request
        HttpServletRequest request = HttpContextUtils.getHttpServletRequest();
        //获取session
        String token = request.getHeader("token");
        JwtTokenUtil jwtTokenUtil=new JwtTokenUtil();
        String userName=jwtTokenUtil.getUsernameFromToken(token);
        // 设置IP地址
        systemLog.setIp(IPUtil.getLocalIP());
        //设置登录人
        systemLog.setUserCode(userName);
        //设置登录时间
        systemLog.setOperationTime(sdf.format(new Date()));

        // 保存系统日志
        logDao.save(systemLog);
    }

}


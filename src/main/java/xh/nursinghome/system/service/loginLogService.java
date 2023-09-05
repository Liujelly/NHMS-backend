package xh.nursinghome.system.service;

import xh.nursinghome.system.entity.loginLog;

import java.rmi.UnknownHostException;

public interface loginLogService {
    Integer loginLogSave(loginLog loginL) throws UnknownHostException, java.net.UnknownHostException;
}

package com.lgf.impl;

import com.lgf.dao.DtManagerDao;
import com.lgf.mapper.DtManagerMapper;
import com.lgf.pojo.DtManager;
import com.lgf.utils.MD5Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DtManagerImpl implements DtManagerDao {
    @Autowired
    private DtManagerMapper dtManagerMapper;

    @Override
    public DtManager userLogin(String username, String password) {
        password = MD5Util.md5(password);
        return dtManagerMapper.userLogin(username,password);
    }
}

package com.lgf.dao;

import com.lgf.pojo.DtManager;

public interface DtManagerDao {
    DtManager userLogin(String username, String password);
}

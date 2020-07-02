package com.lgf.impl;

import com.lgf.dao.DtManagerRoleListDao;
import com.lgf.mapper.DtManagerRoleListMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DtManagerRoleListImpl implements DtManagerRoleListDao {
    @Autowired
    private DtManagerRoleListMapper dtManagerRoleListMapper;
}

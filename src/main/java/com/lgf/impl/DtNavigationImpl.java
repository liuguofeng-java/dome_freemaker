package com.lgf.impl;

import com.lgf.dao.DtNavigationDao;
import com.lgf.mapper.DtNavigationMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DtNavigationImpl implements DtNavigationDao {
    @Autowired
    private DtNavigationMapper dtNavigationMapper;
}

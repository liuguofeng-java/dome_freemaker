package com.lgf.dao;

import com.lgf.pojo.DtNavigation;

import java.util.List;

public interface DtNavigationDao {
    List<DtNavigation> getUserList(int userId);
}

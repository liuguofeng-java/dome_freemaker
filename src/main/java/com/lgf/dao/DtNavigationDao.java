package com.lgf.dao;

import com.lgf.pojo.DtNavigation;
import com.lgf.pojo.json.UserList;

import java.util.List;

public interface DtNavigationDao {
    List<UserList> getUserList(int userId);
}

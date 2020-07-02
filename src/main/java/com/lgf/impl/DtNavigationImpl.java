package com.lgf.impl;

import com.lgf.dao.DtNavigationDao;
import com.lgf.mapper.DtNavigationMapper;
import com.lgf.pojo.DtNavigation;
import com.lgf.pojo.json.UserList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class DtNavigationImpl implements DtNavigationDao {
    @Autowired
    private DtNavigationMapper dtNavigationMapper;

    /*
    * 获取用户列表
    * */
    @Override
    public List<UserList> getUserList(int userId) {
        List<UserList> userLists= new ArrayList<>();
        List<DtNavigation> dtNavigation = dtNavigationMapper.getUserList(userId);
        for(int i = 0;i < dtNavigation.size();i++){
            if(dtNavigation.get(i).getParentId() == 0){
                UserList userList = new UserList();
                userList.setDtNavigation(dtNavigation.get(i));
                userLists.add(userList);
            }
        }
        for(int i = 0;i < dtNavigation.size();i++){
            if(dtNavigation.get(i).getParentId() != 0){

            }
        }
        return userLists;
    }
}

package com.lgf.impl;

import com.lgf.dao.DtNavigationDao;
import com.lgf.mapper.DtNavigationMapper;
import com.lgf.pojo.DtNavigation;
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
    public List<DtNavigation> getUserList(int userId) {
        List<DtNavigation> userLists = dtNavigationMapper.getUserList(userId);
        List<DtNavigation> dtNavigations= new ArrayList<>();
        for(int i = 0;i < userLists.size();i++){
            if(userLists.get(i).getParentId().equals(0)){
                dtNavigations.add(userLists.get(i));
            }
        }
        for(int i = 0;i < dtNavigations.size();i++){
            List<DtNavigation> dt = new ArrayList<>();
            for(int j = 0;j < userLists.size();j++){
                if(userLists.get(j).getParentId().equals(dtNavigations.get(i).getId())){
                    dt.add(userLists.get(j));
                }
            }
            dtNavigations.get(i).setChildren(dt);
        }

        return dtNavigations;
    }
}

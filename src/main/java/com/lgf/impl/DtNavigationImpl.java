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
        List<DtNavigation> getUserList = dtNavigationMapper.getUserList(userId);
        List<DtNavigation> dtNavigations = new ArrayList<>(getUserList);
        for(int i = 0;i < dtNavigations.size();i++){
            if(!dtNavigations.get(i).getParentId().equals(0)){
                dtNavigations.remove(dtNavigations.get(i));
            }
        }
        /*for(int i = 0;i < dtNavigations.size();i++){
            if(dtNavigations.get(i).getParentId() != 0){
                List<DtNavigation> dt = new ArrayList<>();
                for (int j = 0; j < getUserList.size();j++){
                    if(getUserList.get(j).getId().equals(dtNavigations.get(i).getParentId())){
                        dt.add(getUserList.get(j));
                    }
                }
                dtNavigations.get(i).setChildren(dt);
            }
        }*/
        return dtNavigations;
    }
}

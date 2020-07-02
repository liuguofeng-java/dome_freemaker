package com.lgf.pojo.json;

import com.lgf.pojo.DtNavigation;

import java.util.List;

public class UserList {
    private DtNavigation dtNavigation;
    private List<DtNavigation> dtNavigations;

    public DtNavigation getDtNavigation() {
        return dtNavigation;
    }

    public void setDtNavigation(DtNavigation dtNavigation) {
        this.dtNavigation = dtNavigation;
    }

    public List<DtNavigation> getDtNavigations() {
        return dtNavigations;
    }

    public void setDtNavigations(List<DtNavigation> dtNavigations) {
        this.dtNavigations = dtNavigations;
    }

    @Override
    public String toString() {
        return "UserList{" +
                "dtNavigation=" + dtNavigation +
                ", dtNavigations=" + dtNavigations +
                '}';
    }
}

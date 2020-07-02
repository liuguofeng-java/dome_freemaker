package com.lgf.impl;

import com.lgf.dao.DtManagerLogDao;
import com.lgf.mapper.DtManagerLogMapper;
import com.lgf.pojo.DtManagerLog;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DtManagerLogImpl implements DtManagerLogDao {
    @Autowired
    private DtManagerLogMapper dtManagerLogMapper;

    /*
    * 添加日志
    * */
    @Override
    public boolean addLog(DtManagerLog dtManagerLog) {
        int i = dtManagerLogMapper.addLog(dtManagerLog);
        if(i > 0){
            return true;
        }else{
            return false;
        }
    }
}

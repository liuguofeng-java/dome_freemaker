package com.lgf.mapper;

import com.lgf.pojo.DtManagerLog;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface DtManagerLogMapper {

    int addLog(DtManagerLog dtManagerLog);
}
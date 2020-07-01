package com.lgf.mapper;

import com.lgf.pojo.DtManager;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface DtManagerMapper {
    DtManager userLogin(@Param(value = "username") String username,@Param(value = "password")String password);
}
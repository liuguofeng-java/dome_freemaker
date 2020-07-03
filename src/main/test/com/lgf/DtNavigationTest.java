package com.lgf;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.lgf.impl.DtNavigationImpl;
import com.lgf.pojo.DtNavigation;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class DtNavigationTest {
    @Autowired
    private DtNavigationImpl dtNavigationImpl;

    @JsonIgnore
    @Test
    public void getUserList() throws JsonProcessingException {
        List<DtNavigation> userList = dtNavigationImpl.getUserList(1);
        ObjectMapper mapper=new ObjectMapper();//先创建objmapper的对象
        String string = mapper.writeValueAsString(userList);
        System.out.println(string);
    }
}

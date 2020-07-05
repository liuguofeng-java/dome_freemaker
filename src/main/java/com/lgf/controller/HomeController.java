package com.lgf.controller;

import com.lgf.impl.DtNavigationImpl;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
    @Autowired
    private DtNavigationImpl dtNavigationImpl;
    private Log log = LogFactory.getLog(HomeController.class);
    /*
     * 框架
     * */
    @RequestMapping("/home")
    public String home(){
        return "home/frame";
    }

    @RequestMapping("/home/index")
    public String index(){
        return "home/index";
    }
}

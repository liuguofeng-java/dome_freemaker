package com.lgf.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ErrorController {
    /*
     * 404
     * */
    @RequestMapping("/404")
    public String error_404(){
        return "error/404";
    }
    /*
     * 500
     * */
    @RequestMapping("/500")
    public String error_500(){
        return "error/500";
    }
}

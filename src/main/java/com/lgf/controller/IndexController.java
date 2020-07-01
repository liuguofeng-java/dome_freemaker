package com.lgf.controller;

import com.lgf.impl.DtManagerImpl;
import com.lgf.pojo.DtManager;
import com.lgf.pojo.json.JsonResult;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
public class IndexController {
    @Autowired
    private DtManagerImpl dtManagerImpl;
    public static Log log = LogFactory.getLog(IndexController.class);
    /*
    * 登录页
    * */
    @RequestMapping(value = {"/index","/"},method = RequestMethod.GET)
    public String index(){
        return "login/index";
    }

    /*
    * 登录逻辑
    * */
    @ResponseBody
    @RequestMapping(value = "userLogin",method = RequestMethod.POST)
    public JsonResult userLogin(String username, String password, boolean ck, HttpServletRequest request, HttpServletResponse response){
        try{
            DtManager dtManager = dtManagerImpl.userLogin(username, password);
            //记住密码
            if(ck && dtManager != null){
                Cookie cookie = new Cookie("user",username + "#" + password);
                cookie.setMaxAge(24 * 60 * 60 * 7);
                cookie.setPath("/");
                response.addCookie(cookie);
            }else {
                Cookie cookie = new Cookie("user",null);
                cookie.setMaxAge(0);
                cookie.setPath("/");
                response.addCookie(cookie);
            }
            if(dtManager != null){
                HttpSession session = request.getSession();
                session.setAttribute("user",dtManager);
                return JsonResult.data(200,"ok",null);
            }else{
                return JsonResult.data(200,"用户名或密码错误",null);
            }
        }catch (Exception ex){
            log.error("userLogin:服务器发生异常");
            return JsonResult.data(500,"userLogin:服务器发生异常",null);
        }
    }

    /*
    * 到主页
    * */
    @RequestMapping("/home")
    public String home(){
        return "home/index";
    }
    /*
    * 退出
    * */
    @RequestMapping("/quit")
    public String quit(HttpSession session){
        session.invalidate();
        return "redirect:login/index";
    }
}

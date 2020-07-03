package com.lgf.controller;

import com.lgf.impl.DtManagerImpl;
import com.lgf.impl.DtManagerLogImpl;
import com.lgf.impl.DtNavigationImpl;
import com.lgf.pojo.DtManager;
import com.lgf.pojo.DtManagerLog;
import com.lgf.pojo.DtNavigation;
import com.lgf.pojo.json.JsonResult;
import com.lgf.utils.IPUtil;
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
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class IndexController {
    //用户表
    @Autowired
    private DtManagerImpl dtManagerImpl;
    //登录日志
    @Autowired
    private DtManagerLogImpl dtManagerLogImpl;
    //用户菜单
    @Autowired
    private DtNavigationImpl dtNavigationImpl;

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
    public JsonResult userLogin(String username, String password, boolean ck, HttpServletRequest request, HttpServletResponse response) throws Exception{
        JsonResult jsonResult = new JsonResult();
        DtManagerLog dtManagerLog = new DtManagerLog();
        try{
            //验证用户登录状态
            DtManager dtManager = dtManagerImpl.userLogin(username, password);
            if(dtManager != null){
                //获取用户列表信息
                List<DtNavigation> userList = dtNavigationImpl.getUserList(dtManager.getId());
                HttpSession session = request.getSession();
                //用户信息
                session.setAttribute("user",dtManager);
                //用户列表消息
                session.setAttribute("getUserList",userList);
                jsonResult.setCode(200);
                jsonResult.setMsg("ok");
            }else{
                jsonResult.setCode(200);
                jsonResult.setMsg("用户名或密码错误");
            }
            //记住密码
            String userCookic = username + "#" + password;
            int maxAge = 24 * 60 * 60 * 7;
            if(dtManager == null || !ck){
                userCookic = null;
                maxAge = 0;
            }
            Cookie cookie = new Cookie("user",userCookic);
            cookie.setMaxAge(maxAge);
            cookie.setPath("/");
            response.addCookie(cookie);
        }catch (Exception ex){
            log.error("userLogin:服务器发生异常:"+ex);
            jsonResult.setCode(500);
            jsonResult.setMsg("userLogin:服务器发生异常:"+ex);
        }
        //登录日志
        dtManagerLog.setAddTime(new Date());
        dtManagerLog.setUserIp(IPUtil.getIpAddress(request));
        dtManagerLog.setUserName(username);
        dtManagerLog.setRemark(jsonResult.getMsg());
        dtManagerLog.setActionType("Login");
        dtManagerLogImpl.addLog(dtManagerLog);
        return jsonResult;
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

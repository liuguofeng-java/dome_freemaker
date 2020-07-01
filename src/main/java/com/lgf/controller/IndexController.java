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

@Controller
@SessionAttributes(value = {"user"})
public class IndexController {
    @Autowired
    private DtManagerImpl dtManagerImpl;
    public static Log log = LogFactory.getLog(IndexController.class);
    @RequestMapping(value = "index",method = RequestMethod.GET)
    public String index(){
        return "login/login";
    }
    @ResponseBody
    @RequestMapping(value = "userLogin",method = RequestMethod.POST)
    public JsonResult userLogin(String username, String password, Model model){
        try{
            DtManager dtManager = dtManagerImpl.userLogin(username, password);
            if(dtManager != null){
                model.addAttribute("user",dtManager);
                return JsonResult.data(200,"ok",null);
            }else{
                return JsonResult.data(200,"error",null);
            }
        }catch (Exception ex){
            log.error("userLogin:服务器发生异常");
            return JsonResult.data(500,"userLogin:服务器发生异常",null);
        }
    }
}

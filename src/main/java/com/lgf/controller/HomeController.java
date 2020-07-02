package com.lgf.controller;

import com.lgf.impl.DtNavigationImpl;
import com.lgf.pojo.DtManager;
import com.lgf.pojo.json.JsonResult;
import com.lgf.pojo.json.UserList;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public class HomeController {
    @Autowired
    private DtNavigationImpl dtNavigationImpl;
    private Log log = LogFactory.getLog(HomeController.class);
    /*
     * 到主页
     * */
    @RequestMapping("/home")
    public String home(){
        return "home/index";
    }

    /*
    * 获取用户列表
    * */
    @ResponseBody
    @RequestMapping(value = "",method = RequestMethod.POST)
    public JsonResult getUserList(HttpSession session){
        List<UserList> userLists = null;
        JsonResult jsonResult = new JsonResult();
        try {
            DtManager dtManager = (DtManager)session.getAttribute("user");
            userLists = dtNavigationImpl.getUserList(dtManager.getId());
            jsonResult.setMsg("获取成功");
            jsonResult.setCode(200);
            jsonResult.setData(userLists);
        }catch (Exception ex){
            log.error("获取列表失败：" + ex.getMessage());
            jsonResult.setMsg("获取列表失败：" + ex.getMessage());
            jsonResult.setCode(500);
        }
        session.setAttribute("userList",jsonResult);
        return jsonResult;
    }
}

package com.ymy.controller;

import com.ymy.pojo.User;
import com.ymy.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class LoginController {
    //    @Autowired
//    private LoginService loginService;
//    @RequestMapping("/index.do")
//    public String init(){
//        return "login";
//    }
//
//    @RequestMapping("/login.do")
//    public String login(String username, String password, HttpSession session){
////        System.out.println(username+":"+password);
//        User u=loginService.login(username,password);
//        if (u!=null){
//            session.setAttribute("user",u);
//            return "forward:/schedule.do";
//        }
//        return "failure";
//    }
    @Autowired
    private LoginService loginService;
//登录
    @RequestMapping("login.do")
    public String login(String username, String password,HttpSession session,Model model) {
        User u = loginService.login(username, password);
        if (u != null) {
            session.setAttribute("user",u);
            return "init";
        }else{
            model.addAttribute("failure","loginFailure");
            return "init";
        }
    }
    //退出登录
    @RequestMapping("destory.do")
    public String destory(HttpSession session){
        if (session!=null){
//            session.invalidate();
            //注意的是这个地方不能做session的销毁，因为该页面的主要内容在这个session中
            session.removeAttribute("user");
            //这个是session对象中移除该键值对
        }
        return "init";
    }

    //修改密码
    @RequestMapping("updatePw")
    public String updatePw(String oldPw,String newPw,HttpSession session,Model model){
        User user=(User)session.getAttribute("user");
        System.out.println(user.getName());
        if(user.getPassword().equals(oldPw)){
            System.out.println(user.getName());
            loginService.update(newPw,user);
//            model.addAttribute("success","success");
            return "forward:/destory.do";
        }else{
            model.addAttribute("failure","updateFailure");
            return "init";
        }

    }
}

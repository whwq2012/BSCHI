package com.edison.controller;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.edison.entity.User;
import com.edison.service.UserService;

@Controller
@Scope(value="prototype")
@RequestMapping("/userf")
public class UserController {

    @Resource
    private UserService userService;

    @RequestMapping(value="/login")
    public String login(User user,Model model) throws Exception {
//        user=userService.checkUserLogin(user.getName(), user.getPassword());
//        if(user!=null){
//            model.addAttribute(user);
//            return "welcome";// 路径 WEB-INF/pages/welcome.jsp            
//        }
        return "welcome";
    }
}
package com.edison.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
//动态页面跳转控制器

@Controller
@RequestMapping(value="/main")
public class FormController {
    @RequestMapping(value=".action")
    public String loginForm(Model model){
    	System.out.println("form controller");
        return "main";
    }

}

package com.edison.controller.user;

import java.io.Console;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.edison.common.CacheUtil;
import com.edison.common.StringUtil;
import com.edison.controller.BaseController;
import com.edison.entity.User;
import com.edison.service.UserService;

@Controller
@RequestMapping("/user")  
public class UserAction extends BaseController {  
    //注入Service  
    @Autowired  
    private UserService userService;  
    
    private static Logger logger = Logger.getLogger(UserAction.class);
      
    @RequestMapping(value="regist", method = RequestMethod.POST)  
    public String regist(User user, Model model){  
          
        System.out.println("用户注册："+user.getName()+user.getPassword());  
           
        Boolean isSuccess = userService.regist(user);  
        if(isSuccess){
            model.addAttribute("msg", "注册成功");  
            //注册成功后跳转success.jsp页面  
            return "success";  
        } else {
        	return "regist";
        }
    }  

    @RequestMapping(value="login.action", method = RequestMethod.POST)
    public ModelAndView login(String name, String password, Model model, HttpServletRequest request){  
          
        System.out.println("用户登录："+ name +" - "+password); 
        ModelAndView mv = new ModelAndView();
        String result;
        Map<String, Object> map = new HashMap();
        User user = userService.login(name,password);
        map.put("User", user);
        CacheUtil.user = user;
        logger.info("请求登录");
        logger.error("error edison");
        logger.warn("warn");
        HttpSession session = request.getSession(true);
        if (user == null) {
        	result = "login";
        	model.addAttribute("msg", "用户不存在或密码错误");
        	mv.setViewName("login");
        } else if(name.equals(user.getName())){
            //model.addAttribute("msg", "Login success");
           session.setAttribute("userName", user.getName());
            logger.info(" login sucess");
           // System.out.println(session);
            mv.addObject("user", user);
            mv.setView(new RedirectView("/BSCHI/user/home"));
            setUser(user);
            result = "forward:/main";
        } else {
        	mv.setViewName("login");
        	result = "success";
        }
        System.out.println("jump----------");
        return mv;
    }  
    
    @RequestMapping(value="home")  
    public String sf(){
    	User user = getUser();
    	String returnView = "";
    	if(StringUtil.isEmpty(user.getName())) {
    		returnView = "404";
    	} else {
    		returnView = "index";
    	}
    	return returnView;
    }
    

    @RequestMapping(value="info", method = RequestMethod.GET)
    @ResponseBody
    public User info(HttpServletRequest request){
    	HttpSession session = request.getSession(true);
    	User user = getUser();
    	return user;
    }
    
    @RequestMapping(value="resetPassword", method = RequestMethod.POST)
    @ResponseBody
    public String resetPassword(String name, String oldPassword, String newPassword){
    	//HttpSession session = request.getSession(true);
    	User user = getUser();
    	System.out.println(oldPassword+": " +newPassword);
    	String result = "";
    	try {
    		if (oldPassword.equals(user.getPassword())) {
        		userService.resetPassword(user.getName(), newPassword);
        		result = "success";
    		} else {
    			result = "oldPasswordNotCorrect";
    		}
    	}
    	catch (Exception e) {
    		logger.error(e.getMessage());
			return "error";
		}
    	return "success";
    }
    
}

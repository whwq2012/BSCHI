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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.edison.common.CacheUtil;
import com.edison.common.StringUtil;
import com.edison.controller.BaseController;
import com.edison.entity.ReturnObj;
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
    @ResponseBody
    public Object regist(@RequestParam("userName")String userName, @RequestParam("password")String password){  
          
    	User user = new User();
    	user.setName(userName);
    	user.setPassword(password);
    	Boolean is_rigist = userService.regist(user);
    	ReturnObj rback = new ReturnObj();
    	if (is_rigist) {
    		rback.setCode("-1");
    	}else {
    		
    		rback.setCode("0");
    	}
    	return rback;
    }  

    @RequestMapping(value="/login", method = RequestMethod.POST)
    @ResponseBody
    public Object login(@RequestParam("userName")String userName, @RequestParam("password")String password,HttpSession session){  
    	User user = userService.findUserByName(userName);
    	ReturnObj rback = new ReturnObj();
    	if (user == null) {
    		rback.setCode("-1");
    	}else if (!user.getPassword().equals(password)) {
			rback.setCode("-2");
		}else {
			rback.setCode("0");
			session.setAttribute("user", user);
		}
    	return rback;
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
    
	@RequestMapping("/123")
	public void gaa() {
		System.out.println("11");
	}

    
}

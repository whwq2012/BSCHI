package com.edison.service;

import com.edison.entity.User;

public interface UserService {

    //用户注册  
	Boolean regist(User user);  
    //用户登录  
    User login(String name, String password);  
    
    void resetPassword(String name, String password);
}

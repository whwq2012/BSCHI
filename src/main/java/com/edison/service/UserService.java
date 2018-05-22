package com.edison.service;

import org.springframework.stereotype.Service;

import com.edison.entity.User;

public interface UserService {

    //用户注册  
	Boolean regist(User user);  
    //用户登录  
    User login(String name, String password);  
    // 修改用户信息
    public int alert(User user);
    
    public User findUserByName(String userName);
}

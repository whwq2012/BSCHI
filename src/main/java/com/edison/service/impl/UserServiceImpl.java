package com.edison.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.edison.dao.user.UserDao;
import com.edison.entity.User;
import com.edison.service.UserService;

@Service
public class UserServiceImpl implements UserService    {
	
    @Autowired  
    private UserDao userDao;  
      
    public Boolean regist(User user) {
    	User findUser = userDao.findUserByName(user.getName());
    	if (findUser == null) {
    	userDao.addUser(user);
    	return true;
    }else {
    	return false;
	}  
 }
  
    public User login(String name, String password) {
    	User user = userDao.findUserByNameAndPwd(name,password);
    	
    	if (user!= null) {
    		return user;
    	}else {
			return null;
		}
    }
    
    public int alert(User user) {
    	
    	int result = userDao.updateUser(user);
    	
    	return result;
    }





}

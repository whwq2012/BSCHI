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
      
    @Override  
    public Boolean regist(User user) {
    	User findUser = new User();
    //	findUser = userDao.findUserByName(user.getName());
    //	if(findUser == null) {
         //   userDao.addUser(user); 
         //   return true;
    	//} else {
    		return false;
    	//}
 
    }  
  
    @Override  
    public User login(String name, String password) {
    	User user = new User();
    	//user = userDao.findUserByNameAndPwd(name,password);
    	System.out.println("user - name:"+ user);
    	return user;
    }

	@Override
	public void resetPassword(String name, String password) {
		//userDao.resetUserPassword(name, password);
	}  

}

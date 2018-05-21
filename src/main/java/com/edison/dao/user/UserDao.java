package com.edison.dao.user;

import org.apache.ibatis.annotations.Param;

import com.edison.entity.User;

public interface UserDao {
//	//用户注册
//	void add(User user);
//	//用户登录
//	User select(@Param("name") String name);
//	//修改个人信息
//	void update(User user);
	
	void addUser(User user);
	
	User findUserByNameAndPwd(String name, String password);
	
	User findUserByName(String name);
	
	void resetUserPassword(String password, String name);
	
	
	
	
    
}

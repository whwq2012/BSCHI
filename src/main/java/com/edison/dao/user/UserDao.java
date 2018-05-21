package com.edison.dao.user;

import org.apache.ibatis.annotations.Param;

import com.edison.entity.User;

public interface UserDao {	
    public void addUser(User user);
    public User findUserByName(@Param("name") String name);
    public User findUserByNameAndPwd(@Param("name")String name, @Param("password")String password);
    public int updateUser(User user);
}

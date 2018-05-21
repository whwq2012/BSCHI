package com.edison.controller;

import com.edison.entity.User;

public class BaseController {

	private User user;
	private String status;
	public BaseController() {
		this.status = "";
		this.user = new User();
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	
}

package com.edison.entity;

public class User {

	private int id;
	private String name;
	private String password;
	private String phonenumber;
	private String address; 
	private String nick;
	private String role;
	private long birthday;
	private String hobby;
	private String sex;

	public String getSex() {
		return sex;
	}


	public void setSex(String sex) {
		this.sex = sex;
	}


	public String getHobby() {
		return hobby;
	}


	public void setHobby(String hobby) {
		this.hobby = hobby;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getPhonenumber() {
		return phonenumber;
	}


	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getNick() {
		return nick;
	}


	public void setNick(String nick) {
		this.nick = nick;
	}


	public String getRole() {
		return role;
	}


	public void setRole(String role) {
		this.role = role;
	}


	public long getBirthday() {
		return birthday;
	}


	public void setBirthday(long birthday) {
		this.birthday = birthday;
	}


	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", password=" + password + ", phonenumber=" + phonenumber
				+ ", address=" + address + ", nick=" + nick + ", role=" + role + ", birthday=" + birthday + ", hobby="
				+ hobby + "]";
	}


	


	
	
	
}

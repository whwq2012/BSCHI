package com.edison.entity;

public class News {
	private int id;
	private int user_id;
	private String descript;
	private String title;
	private String news_img_url;
	private int num;
	public int getId() {
		return id;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getDescript() {
		return descript;
	}
	public void setDescript(String descript) {
		this.descript = descript;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getNews_img_url() {
		return news_img_url;
	}
	public void setNews_img_url(String news_img_url) {
		this.news_img_url = news_img_url;
	}

}

package com.edison.entity;

import java.sql.Date;

public class Activity {
    private int id;
    private String name;
    private Date starttime;
    private Date endtime;
    private String eneity_id;
    private String content;
    private String activity_type;
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
	public Date getStarttime() {
		return starttime;
	}
	public void setStarttime(Date starttime) {
		this.starttime = starttime;
	}
	public Date getEndtime() {
		return endtime;
	}
	public void setEndtime(Date endtime) {
		this.endtime = endtime;
	}
	public String getEneity_id() {
		return eneity_id;
	}
	public void setEneity_id(String eneity_id) {
		this.eneity_id = eneity_id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getActivity_type() {
		return activity_type;
	}
	public void setActivity_type(String activity_type) {
		this.activity_type = activity_type;
	}
    
    
    
}

package com.dto;
import java.io.Serializable;
public class MemberBean implements java.io.Serializable{
	private int id;
	private String name;
	public  MemberBean() {
	}
	public int getID() {
		return id;
	}
	public void setId(int id) {
		this.id=id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
}
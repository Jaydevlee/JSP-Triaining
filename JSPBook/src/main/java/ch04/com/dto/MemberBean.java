package ch04.com.dto;

import java.io.Serializable;

public class MemberBean implements java.io.Serializable{
	//필드
	private int id;
	private String name;
	
	//기본 생성자
	public MemberBean() {
	}
	
	//메소드
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
	
}

package dto;

import java.io.Serializable;

//           구현클래스  구현       인터페이스
public class Board implements Serializable{
	//상수
	private static final long serialVersionUID = -4274700572038677000L;
	//필드
	private int no;			//게시물번호
	private String title;	//제목
	private String content;	//내용
	private String writer; 	//작성자
	private String regdate;	//게시일
	
	//생성자
	public Board() {
		super();
	}
	public Board(int no, String title, String content, String writer, String regdate) {
		this.no = no;
		this.title = title;
		this.content = content;
		this.writer = writer;
		this.regdate = regdate;
	}
	
	//메소드
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	
}

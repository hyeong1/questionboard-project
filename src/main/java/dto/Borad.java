package dto;

import java.io.Serializable;

public class Borad implements Serializable {
	private String boradID;		// 글 번호
	private String title;		// 제목
	private String content;		// 내용
	private String writeTime;	// 작성일자
	private String dept;		// 학과
	private String writer;		// 작성자
	
	public Borad() {
		super();
	}
	public Borad(String title, String content, String writeTime, String dept, String writer) {
		this.title = title;
		this.content = content;
		this.writeTime = writeTime;
		this.dept = dept;
		this.writer = writer;
	}
	
	
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getBoradID() {
		return boradID;
	}
	public void setBoradID(String boradID) {
		this.boradID = boradID;
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
	public String getWriteTime() {
		return writeTime;
	}
	public void setWriteTime(String writeTime) {
		this.writeTime = writeTime;
	}
}

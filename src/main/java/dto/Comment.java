package dto;

public class Comment {
	private String boradID;		// 글 번호
	private String commentID;	// 댓글 번호
	private String cWriter;		// 댓글 작성자
	private String comment;		// 댓글 내용
	private String cWriteTime;	// 댓글 작성일자
	
	public Comment() {
	}
	public Comment(String cWriter, String comment) {
		this.cWriter = cWriter;
		this.comment = comment;
		this.cWriteTime = new java.util.Date().toString();
	}
	
	public String getBoradID() {
		return boradID;
	}
	public void setBoradID(String boradID) {
		this.boradID = boradID;
	}
	public String getCommentID() {
		return commentID;
	}
	public void setCommentID(String commentID) {
		this.commentID = commentID;
	}
	public String getcWriter() {
		return cWriter;
	}
	public void setcWriter(String cWriter) {
		this.cWriter = cWriter;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getcWriteTime() {
		return cWriteTime;
	}
	public void setcWriteTime(String cWriteTime) {
		this.cWriteTime = cWriteTime;
	}
}

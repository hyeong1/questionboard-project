<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.sql.*" %>
<%@ include file="../dbconn.jsp" %>

<%
	request.setCharacterEncoding("UTF-8");

	String cWriter = request.getParameter("userId");
	String postNo = request.getParameter("postNo");
	String comment = request.getParameter("comment");
	// 작성일자 표맷 변경
	Date date = new Date();
    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String writeTime = format.format(date);
	
    // commentId 알아와서 +1
	String seleteQuery = "select max(commentId) commentId from comments where postNo=?";
	pstmt = conn.prepareStatement(seleteQuery);
	pstmt.setInt(1, Integer.parseInt(postNo));
	rs = pstmt.executeQuery();
	int commentId = 0;
	while (rs.next()) {
		commentId = rs.getInt("commentId") + 1;
	}
	
	// 댓글 저장
	String insertQuery = "insert into comments values(?,?,?,?,?)";
	pstmt = conn.prepareStatement(insertQuery);
	pstmt.setInt(1, commentId);
	pstmt.setInt(2, Integer.parseInt(postNo));
	pstmt.setString(3, cWriter);
	pstmt.setString(4, comment);
	pstmt.setString(5, writeTime);
	pstmt.executeUpdate();
	
	if (pstmt != null)
		pstmt.close();
	if (conn != null)
		conn.close();
	
	response.sendRedirect("content.jsp?postNo=" + postNo);
%>
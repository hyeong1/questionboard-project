<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp" %>

<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("input-id");
	String password = request.getParameter("input-password");
	
	String sql = "select * from users where userId=? and userPw=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	pstmt.setString(2, password);
	rs = pstmt.executeQuery();
	
	if (rs.next()) {
		String userId = rs.getString("userId");
		String userPw = rs.getString("userPw");
		
		session.setAttribute("user-id", userId);

		response.sendRedirect("hello.jsp");
	} else {
		out.println("<script>alert('일치하는 사용자 정보가 없습니다.');</script>");
	}
	if (pstmt != null) {
		pstmt.close();
	}
	if (conn != null)
		conn.close();
%>
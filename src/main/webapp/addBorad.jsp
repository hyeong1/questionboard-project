<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.sql.*" %>

<%@ page import="dto.Borad"%>
<%@ page import="dao.BoradRepository"%>
<%@ include file="dbconn.jsp" %>

<%
	request.setCharacterEncoding("UTF-8");

	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	Object writer = session.getAttribute("user-id"); // 현재 로그인된 사용자를 작성자로 수정
	// 작성일자 포맷 수정
	Date date = new Date();
    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String writeTime = format.format(date);
	
    // 작성자 학과 가져오기
	String selectQuery = "select userDept from users where userId=?";
	pstmt = conn.prepareStatement(selectQuery);
	pstmt.setString(1, (String)writer);
	rs = pstmt.executeQuery();
	String userDept = null;
	while (rs.next()) {
		userDept = rs.getString("userDept");
	}
	
	// 가장 최근 글번호 가져오기
	int postNo = 0;
	selectQuery = "select max(postNo) postNo from posts";
	pstmt = conn.prepareStatement(selectQuery);
	rs = pstmt.executeQuery();
	while (rs.next()) {
		postNo = rs.getInt("postNo") + 1;
	}
	
	// 새 글 저장
	Borad newBorad = new Borad();
	newBorad.setBoradID(Integer.toString(postNo));
	newBorad.setTitle(title);
	newBorad.setContent(content);
	newBorad.setWriteTime(writeTime);
	newBorad.setDept(userDept);
	newBorad.setWriter((String)writer);
	
	BoradRepository dao = BoradRepository.getInstance();
	dao.addBorad(newBorad);
	
	String insertQuery = "insert into posts values(?, ?, ?, ?, ?, ?)";
	pstmt = conn.prepareStatement(insertQuery);
	pstmt.setInt(1, postNo);
	pstmt.setString(2, title);
	pstmt.setString(3, content);
	pstmt.setString(4, writeTime);
	pstmt.setString(5, userDept);
	pstmt.setString(6, (String)writer);
	pstmt.executeUpdate();
	
	if (pstmt != null)
		pstmt.close();
	if (conn != null)
		conn.close();
	
	response.sendRedirect("hello.jsp");
%>
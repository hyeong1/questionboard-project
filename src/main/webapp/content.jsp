<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Borad" %>
<%@ page import="dao.BoradRepository" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<%
	String postNo = request.getParameter("postNo");
	BoradRepository dao = BoradRepository.getInstance();
	Borad borad = dao.getBoradByID(postNo);
%>	
<title><%=borad.getTitle() %></title>
</head>
<body>
	<%@ include file="component/menu.jsp" %>

	<div class="container mt-3">
		<h4><b>제목</b></h4>
		<p><%=borad.getTitle() %></p>
		<h4><b>작성자</b></h4>
		<p><%=borad.getWriter() %></p>
		<h4><b>학과</b></h4>
		<p><%=borad.getDept() %></p>
		<h4><b>내용</b></h4>
		<div class="border rounded px-2 mt-1">
			<p><%=borad.getContent() %></p>
		</div>
	</div>
	
	<%@ include file="component/commentForm.jsp" %>
	<%@ include file="component/footer.jsp" %>
</body>
</html>
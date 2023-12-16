<%
	session.removeAttribute("user-id");
	response.sendRedirect("hello.jsp");
%>
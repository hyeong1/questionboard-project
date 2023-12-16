<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Hello</title>
</head>
<body>
	<%@ include file="component/menu.jsp" %>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">전공 질문게시판</h1>
		</div>
	</div>
	
	<!-- 게시글 부분 -->
	<%@ include file="component/borads.jsp" %>
	
	<%@ include file="component/footer.jsp" %>
</body>
</html>
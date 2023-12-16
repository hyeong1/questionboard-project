<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Login</title>
</head>
<body>
	<%@ include file="component/menu.jsp" %>
	<div class="container mt-3">
		<form action="processLogin.jsp" class="row g-3">
		  <div class="col-12">
		    <label class="form-label">아이디</label>
		    <input type="text" class="form-control" name="input-id">
		  </div>
		  <div class="col-12">
		    <label class="form-label">비밀번호</label>
		    <input type="password" class="form-control" name="input-password">
		  </div>
		  <div class="col-12 mt-2">
		    <button type="submit" class="btn btn-primary">로그인</button>
		  </div>
		</form>
	</div>
</body>
</html>
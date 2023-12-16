<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="utf-8">
<title>Register</title>
</head>
<body>
	<%@ include file="component/menu.jsp" %>
	<div class="container mt-3">
		<form action="processRegister.jsp" class="row g-3">
		  <div class="col-12">
		    <label class="form-label">이름</label>
		    <input type="text" class="form-control" name="input-name">
		  </div>
		  <div class="col-md-6">
		    <label class="form-label">아이디</label>
		    <input type="text" class="form-control" name="input-id">
		  </div>
		  <div class="col-md-6">
		    <label class="form-label">비밀번호</label>
		    <input type="password" class="form-control" name="input-password">
		  </div>
		  
		  <div class="col-12">
		    <label class="form-label">학과</label>
		    <input type="text" class="form-control" name="input-department">
		  </div>
		  <div class="col-12 mt-2">
		    <button type="submit" class="btn btn-primary">회원가입</button>
		  </div>
		</form>
	</div>
</body>
</html>
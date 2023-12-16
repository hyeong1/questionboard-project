<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>글쓰기</title>
</head>
<body>
	<%@ include file="component/menu.jsp" %>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">글쓰기</h1>
		</div>
	</div>
	
	<div class="container">
		<form action="addBorad.jsp" method="post" class="px-3">
		    <div class="form-group">
		      <label for="title">제목</label>
		      <input type="text" class="form-control" id="title"
		       placeholder="제목 입력" name="title"
		       maxlength="100" required="required">
		    </div>
		    <div class="form-group">
		   		<label for="content">내용</label>
		   		<textarea class="form-control" rows="5" id="content" name="content" placeholder="내용 작성"></textarea>
		 	</div>
		    <button type="submit" class="btn btn-default">등록</button>
		</form>
	</div>
	
	<%@ include file="component/footer.jsp" %>
</body>
</html>
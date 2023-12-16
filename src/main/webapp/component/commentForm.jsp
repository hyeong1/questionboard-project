<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
</head>
<body>
	<div class="container mt-5">
		<h5 class="card-header">Comment</h5>
		<% if (currentUser != null) { // menu.jsp에서 선언한 currnetUser(현재 로그인한 사용자 변수) 사용%>
		<div class="card-body">
			<form method="post" action="processCommentAdd.jsp?userId=<%=session.getAttribute("user-id")%>&postNo=<%=postNo%>"> <!-- postNo: content.jsp에서 선언 -->
				<textarea class="form-control" rows="3" name="comment"></textarea>
				<div class="d-md-flex justify-content-md-end">
					<input type="submit" class="btn btn-primary mt-3" value="upload" />
				</div>
			</form>
		</div>
		<%	} %>
		<div class="container" id="comments">
			<div class="row">
				<table class="table table-striped">
					<tbody>
						<tr>
							<%@ include file="../dbconn.jsp" %>
							<%
								String selectQuery = "select userId, comment, `date` from comments where postNo=?";
								pstmt = conn.prepareStatement(selectQuery);
								pstmt.setInt(1, Integer.parseInt(postNo)); // content.jsp에서 선언한 postNo 사용
								rs = pstmt.executeQuery();
								while (rs.next()) {
							%>
								<div class="container">
									<div class="row">
										<table class="table table-striped">
											<tr>
												<th><%=rs.getString("userId") %></th>
												<td><%=rs.getString("date") %></td>
											</tr>
										</table>
									</div>
									<div class="mb-3"><%=rs.getString("comment") %></div>
								</div>
							<%	}
								if (pstmt != null)
									pstmt.close();
								if (conn != null)
									conn.close();	
							%>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
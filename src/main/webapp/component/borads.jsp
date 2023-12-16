<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.*" %>
<%@ page import="dto.Borad" %>
<%@ page import="dao.BoradRepository" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<div class="row">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>No</th>
						<th>Title</th>
						<th>Writer</th>
						<th>Department</th>
						<th>Date</th>
					</tr>
				</thead>
				<tbody>
					<%
						BoradRepository dao = BoradRepository.getInstance();
						ArrayList<Borad> listOfBorads = dao.getAllBorads();
					%>
					<%@ include file="../dbconn.jsp" %>
					<%
						String selectQuery = "select * from posts";
						pstmt = conn.prepareStatement(selectQuery);
						rs = pstmt.executeQuery();
						while (rs.next()) {
					%>
						<tr>
							<td><%=rs.getString("postNo") %></td>
							<td>
								<a href="./content.jsp?postNo=<%=rs.getString("postNo")%>">
									<%=rs.getString("title") %>
								</a>
							</td>
							<td><%=rs.getString("userId") %></td>
							<td><%=rs.getString("postDept") %></td>
							<td><%=rs.getString("date") %></td>
						</tr>
					<%
						}
					%>
				</tbody>
			</table>

			<div class="d-grid gap-2 d-md-flex justify-content-md-end" style="width:100%">
				<% 
					// menu.jsp에서 선언한 currentUser
					if (currentUser != null) {
				%>
					<a href="write.jsp" class="d-block btn btn-primary">Post</a>
				<%	} %>
			</div>
		</div>
	</div>
</body>
</html>
<nav class="navbar navbar-expand navbar-dark bg-dark">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="./hello.jsp">Home</a>
			<a class="navbar-brand" href="./register.jsp">Register</a>
			<%
				Object currentUser = session.getAttribute("user-id");
				if (currentUser == null) {
			%>
				<a class="navbar-brand" href="./login.jsp">Login</a>
			<%	} else if (currentUser != null) {
			%>
				<a class="navbar-brand" href="./processLogout.jsp">Logout</a>
			<%	} %>
		</div>
		<div id="current-user">
			<%
				if (currentUser != null) {
			%>
				<span class="navbar-brand"><%=currentUser %></span>
			<%	} %>
		</div>
	</div>
</nav>
<%@page import="java.util.List"%>
<%@page import="com.org.daoImplementation.UserDaoImplement"%>
<%@page import="com.org.dao.UserDao"%>
<%@page import="com.org.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="../Components/bootstrapLink.jsp"%>
<style type="text/css">
body {
	background-image:
		url("https://images.pexels.com/photos/19737866/pexels-photo-19737866/free-photo-of-living-room-in-cottage.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");
	background-size: cover;
	background-position: center;
}

.paint-card {
	background-color: rgba(0, 0, 0, 0.7);
	color: white;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	text-align: center;
}
</style>
</head>
<body>
	<%@ include file="../Components/user_navbar.jsp"%>

	<%
	User user = (User) session.getAttribute("profile");
	if (user != null) {
	%>

	<div class="container p-5">
		<div class="column">
			<div class="col-md-10 offset-md-1">
				<div class="car paint-card">
					<div class="card-body">
						<h1>Profile</h1>
						<br>
						<p>
							<b>Name : <%=user.getName()%></b>
						</p>
						<p>
							<b>Age : <%=user.getAge()%></b>
						</p>
						<p>
							<b>Mobile : <%=user.getMobile()%></b>
						</p>
						<p>
							<b>Email : <%=user.getEmail()%></b>
						</p>
						<p>
							<b>Address : <%=user.getAddress()%></b>
						</p>
						<p>
							<b>AdharNumber : <%=user.getAdharnumber()%></b>
						</p>

					</div>
				</div>
			</div>
		</div>
	</div>
	<%
	}
	%>

</body>
</html>
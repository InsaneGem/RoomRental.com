<%@page import="java.util.List"%>
<%@page import="com.org.dto.Product"%>
<%@page import="com.org.daoImplementation.ProductDaoImplementation"%>
<%@page import="com.org.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	color: white;
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
	<%@ include file="../Components/seller_navbar.jsp"%>
<%
	User u = (User) session.getAttribute("alldetails");
	if(u!=null)
	{
	%>
		<div class="container p-5">
		<div class="column">
			<div class="col-md-7 offset-md-3">
				<div class="car paint-card">
					<div class="card-body">
							<h1>User Details</h1><br><hr>
							<p><b>NAME : <%=u.getName()%></b></p>
							<p><b>AGE : <%=u.getAge()%></b></p>
							<p><b>MOBILE : <%=u.getMobile()%></b></p>
							<p><b>EMAIL : <%=u.getEmail()%></b></p>
							<p><b>ADDRESS : <%=u.getAddress()%></b></p>
							<p><b>AADHAR NUMBER : <%=u.getAdharnumber()%></b></p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%}%>
	<center>${notalldetails }</center>

</body>
</html>
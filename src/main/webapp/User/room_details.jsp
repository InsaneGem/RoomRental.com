<%@page import="com.org.dto.Product"%>
<%@page import="com.org.daoImplementation.ProductDaoImplementation"%>
<%@page import="com.org.dao.ProductDao"%>
<%@page import="com.org.dto.Item"%>
<%@page import="java.util.List"%>
<%@page import="com.org.daoImplementation.UserDaoImplement"%>
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
	background-position: center;
}

.paint-card {
	background-color: rgba(0, 0, 0, 0.7);
	color: white;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	text-align: center;
}
</style>
</style>
</head>
<body>
	<%@ include file="../Components/user_navbar.jsp"%>
	
	<%
	int userId = (int) session.getAttribute("userId");
		Product p = (Product) session.getAttribute("viewroom");
	%>
	<div class="container p-5">
		<div class="column">
			<div class="col-md-9 offset-md-1">
				<div class="car paint-card">
					<div class="card-body">
							<h1>Room Details</h1><br><hr>
							<p><b>PROPERTY NAME : <%=p.getName() %></b></p>
							<p><b>PROPERTY PRICE : <%=p.getPrice()%></b></p>
							<p><b>PROPERTY ADDRESS : <%=p.getAddress()%></b></p>
							<p><b>DESCRIPTION : <%=p.getDescription()%></b></p>
							<p><b>PROPERTY AVAILABILITY : <%=p.getAvailability()%></b></p>
							<p><b>WATER COST / MONTH : <%=p.getWatercost()%></b></p>
							<p><b>CCTV : <%= p.getCctv()%></b></p>
							<p><b>TYPE OF ROOM : <%=p.getTypeofroom()%></b></p>
							<p><b>NUMBER OF ROOMS : <%=p.getNumberofrooms()%></b></p><hr>
							
							<p><a class="btn btn-danger" href="${pageContext.request.contextPath}/reserved?productId=<%=p.getId()%>">Reserved Now</a></p>
						
					</div>
				</div>
			</div>
		</div>
	</div>
<div class="container p-5">
		<div class="column">
			<div class="col-md-9 offset-md-1">
				<div class="car paint-card">
					<div class="card-body">
							<h1>Landlord Details</h1><br><hr>
							<p><b>NAME : <%=p.getSeller().getName()%></b></p>
							<p><b>AGE : <%=p.getSeller().getAge()%></b></p>
							<p><b>MOBILE : <%=p.getSeller().getMobile()%></b></p>
							<p><b>EMAIL : <%=p.getSeller().getEmail()%></b></p>
							<p><b>ADDRESS : <%=p.getSeller().getAddress()%></b></p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
</body>
</html>

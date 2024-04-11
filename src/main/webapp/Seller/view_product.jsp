<%@page import="org.springframework.web.servlet.ModelAndView"%>
<%@page import="com.org.dto.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.org.dao.SellerDao"%>
<%@page import="com.org.dto.Seller"%>
<%@page import="com.org.daoImplementation.SellerDaoImplementation"%>
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
	<div class="container p-5">
		<div class="column">
			<div class="col-md-10 offset-md-1">
				<div class="car paint-card">
					<div class="card-body">
						<h2>Manage Your Rental Portfolio with Ease: View and Track Your Listed Properties</h2>
						<p>As a landlord on RoomRenting.com, you have the convenience
							of viewing all your listed properties in one place. Our platform
							provides you with a comprehensive overview of each property
							you've listed, allowing you to easily manage and track your
							rental portfolio. Simply navigate to your dashboard upon logging
							in, where you'll find a detailed list of all your properties,
							including key information such as location, rental status, and
							tenant details. With just a few clicks, you can access individual
							property profiles to review detailed descriptions, photos, and
							rental history. Stay informed and in control of your rental
							business by leveraging RoomRenting.com's intuitive interface to
							manage and monitor your properties effectively.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%
	Object obj = session.getAttribute("sellerId");
	if (obj != null) {
		int sellerId = (int) session.getAttribute("sellerId");
		Seller seller = new SellerDaoImplementation().FetchSellerById(sellerId);
		List<Product> product = seller.getProducts();
	%>
	<center>${noitem}</center>
	<table border="5" margin="20" class="table"
		style="color: white; background-color: rgba(0, 0, 0, 0.5); border-color: white;">
		<tr>
			<th
				style="width: 30px; height: 30px; border: 2px solid black; text-align: center;">Property
				Name / House Name</th>
			<th
				style="width: 30px; height: 50px; border: 2px solid black; text-align: center;">Price</th>
			<th
				style="width: 30px; height: 50px; border: 2px solid black; text-align: center;">Address</th>
			<th
				style="width: 30px; height: 50px; border: 2px solid black; text-align: center;">Description</th>
			<th
				style="width: 30px; height: 50px; border: 2px solid black; text-align: center;">Availability</th>
			<th
				style="width: 30px; height: 50px; border: 2px solid black; text-align: center;">VIEW</th>
		</tr>
		<c:forEach var="p" items="<%=product%>">
			<tr>
				<td
					style="width: 100px; height: 100px; border: 2px solid black; text-align: center;">${p.getName()}</td>
				<td
					style="width: 100px; height: 100px; border: 2px solid black; text-align: center;">${p.getPrice()}</td>
				<td
					style="width: 100px; height: 100px; border: 2px solid black; text-align: center;">${p.getAddress()}</td>
				<td
					style="width: 100px; height: 100px; border: 2px solid black; text-align: center;">${p.getDescription()}</td>
				<td
					style="width: 100px; height: 100px; border: 2px solid black; text-align: center;">${p.getAvailability()}</td>
				<td style="text-align: center;"><a class="btn-danger btn"
					href="${pageContext.request.contextPath}/userdetailswithproperty?productId=${p.getId()}">VIEW
						ALL DETAILS</a></td>
			</tr>
		</c:forEach>
	</table>
	<%
	}
	%>
</body>
</html>
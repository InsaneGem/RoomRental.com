<%@page import="com.org.daoImplementation.ProductDaoImplementation"%>
<%@page import="com.org.dto.Product"%>
<%@page import="java.util.List"%>
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
	<%@ include file="../Components/user_navbar.jsp"%>
	
	<div class="container p-5">
		<div class="column">
			<div class="col-md-9 offset-md-2">
				<div class="car paint-card">
					<div class="card-body">
						<h1>Welcome User</h1>
	<p>Welcome to RoomRenting.com! We're thrilled to have you join our
		community dedicated to finding the perfect rental accommodation for
		you. Whether you're searching for a cozy studio apartment, a spacious
		house, or a shared living space, we've got you covered. Our
		user-friendly platform is designed to make your search for the ideal
		room as seamless as possible. Dive into our extensive listings,
		explore various options tailored to your preferences, and discover the
		perfect place to call home. With detailed descriptions, high-quality
		photos, and helpful reviews, you'll have all the information you need
		to make an informed decision. Get started now and let RoomRenting.com
		guide you to your next great rental experience!</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%
	Object obj = session.getAttribute("userId");

	if (obj != null) {
		ProductDaoImplementation dao = new ProductDaoImplementation();
		List<Product> product = dao.FetchAllProducts();
	%>
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
				style="width: 30px; height: 50px; border: 2px solid black; text-align: center;">Availability</th>
			<th
				style="width: 30px; height: 50px; border: 2px solid black; text-align: center;">Number
				of Rooms</th>
			<th
				style="width: 30px; height: 50px; border: 2px solid black; text-align: center;">View
				Additional Details</th>
		</tr>
		<c:forEach var="p" items="<%=product%>">
			<tr>
				<td style="text-align: center;">${p.getName()}</td>
				<td style="text-align: center;">${p.getPrice()}</td>
				<td style="text-align: center;">${p.getAddress()}</td>
				<td style="text-align: center;">${p.getAvailability()}</td>
				<td style="text-align: center;">${p.getNumberofrooms()}</td>
				<td style="text-align: center;"><a class="btn-primary btn"
					href="${pageContext.request.contextPath}/viewroom?productId=${p.getId()}">VIEW
						ALL DETAILS</a></td>

			</tr>
		</c:forEach>
	</table>
	<%
	} else {
	RequestDispatcher rd = request.getRequestDispatcher("user_login.jsp");
	rd.forward(request, response);
	}
	%>
	<center>${success}</center>
</body>
</html>
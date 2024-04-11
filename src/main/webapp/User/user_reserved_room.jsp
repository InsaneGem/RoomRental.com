<%@page import="com.org.dto.Product"%>
<%@page import="com.org.daoImplementation.ProductDaoImplementation"%>
<%@page import="com.org.daoImplementation.ItemDaoImplementation"%>
<%@page import="com.org.dto.Item"%>
<%@page import="java.util.List"%>
<%@page import="com.org.daoImplementation.UserDaoImplement"%>
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
						<h1>Renting Accommodation</h1>
						<p>Welcome to RoomRenting.com! Explore our latest listings
							show casing available rooms for rent. From cozy studios to
							spacious multi-bedroom apartments, we have a variety of options
							to suit your needs. Whether you're looking for a place in the
							city center or a peaceful suburb, we've got you covered. Each
							listing provides detailed descriptions, amenities, and location
							information to help you find the perfect place to call home.
							Start your search today and discover the ideal room for you on
							RoomRenting.com!</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%
	int userid = (int) session.getAttribute("userId");
	if (userid != 0) {
		List<Item> item = new UserDaoImplement().FetchUserByID(userid).getItems();
	%>
	<div class="container p-5">
		<div class="column">
			<div class="col-md-9 offset-md-2">
				<div class="car paint-card">
					<div class="card-body">
						<c:forEach var="i" items="<%=item%>">
							<p>
								<b>NAME : ${i.getName()}</b>
							</p>
							<p>
								<b>PRICE : ${i.getPrice()}</b>
							</p>
							<p>
								<b>ADDRESS : ${i.getAddress()}</b>
							</p>
							<p>
								<b>DESCRIPTION : ${i.getDescription()}</b>
							</p>
							<p>
								<b>AVAILABILITY : ${i.getAvailability()}</b>
							</p>
							<p>
								<b>WATER COST : ${i.getWatercost()}</b>
							</p>
							<p>
								<b>CCTV : ${i.getCctv()}</b>
							</p>
							<p>
								<b>NUMBER OF ROOMS : ${i.getNumberofrooms()}</b>
							</p>
							<p>
								<b>TYPE OF ROOM : ${i.getTypeofroom()}</b>
							</p>
							<hr>
							<p>
								<a class="btn btn-danger"
									href="${pageContext.request.contextPath}/room_payment?itemId=${i.getId()}">Pay</a>
							</p>
						</c:forEach>


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
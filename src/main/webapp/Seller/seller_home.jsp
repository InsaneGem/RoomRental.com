<%@page import="com.org.dto.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.org.daoImplementation.SellerDaoImplementation"%>
<%@page import="com.org.dto.Seller"%>
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
	Object obj = session.getAttribute("sellerId");
	if (obj != null) {
		int sellerId = (int) session.getAttribute("sellerId");
		Seller seller = new SellerDaoImplementation().FetchSellerById(sellerId);
	%>
	<div class="container p-5">
		<div class="column">
			<div class="col-md-9 offset-md-2">
				<div class="car paint-card">
					<div class="card-body">
						<h1>Welcome to RoomRental.com</h1>
						<br>
						<p>
							<b>Name : <%=seller.getName()%></b>
						</p>
						<p>
							<b>Age : <%=seller.getAge()%></b>
						</p>
						<p>
							<b>Email : <%=seller.getEmail()%></b>
						</p>
						<p>
							<b>Contact : <%=seller.getMobile()%></b>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%
	} else {
	RequestDispatcher rd = request.getRequestDispatcher("seller_login.jsp");
	rd.forward(request, response);
	}
	%>
	<div class="container p-5">
		<div class="column">
			<div class="col-md-9 offset-md-2">
				<div class="car paint-card">
					<div class="card-body">
						<h1>Renting Accommodation</h1>
						<p>Welcome, Landlord! At RoomRenting.com, we're excited to
							have you on board. As a landlord, you have the opportunity to
							manage your properties efficiently and effortlessly. Upon logging
							in, you'll gain access to your personalized dashboard where you
							can add new properties, update existing listings, and monitor
							tenant inquiries. Additionally, you'll have the ability to view
							detailed profiles of potential tenants, allowing you to make
							informed decisions about who occupies your properties. Keep track
							of your rental income seamlessly as all transactions and income
							generated from users are easily accessible within your account.
							RoomRenting.com is dedicated to providing you with the tools and
							support you need to maximize your rental business's success.
							Start managing your properties with ease today on
							RoomRenting.com!</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
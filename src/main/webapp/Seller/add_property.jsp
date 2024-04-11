<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register For Seller</title>
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
	%>
	<div class="container p-5">
		<div class="row">
			<div class="col-md-10 offset-md-1">
				<div class="car paint-card">
					<div class="card-body">
						${success}
						<h1>Add Property For Renting</h1><br>	
						<form:form action="addProduct" method="post" modelAttribute="product">
							<label>ENTER PROPERTY NAME</label>
							<form:input path="name"/>
							<br>	
							<br>
							<label>ENTER PROPERTY PRICE</label>
							<form:input path="price"/>
							<br>
							<br>
							<label>ENTER PROPERTY ADDRESS</label>
							<form:textarea path="address" placeholder="Banglore"/>
							<br>
							<br>
							<label>ENTER PROPERTY DESCRIPTION</label>
							<form:input path="description"/>
							<br>
							<br>
							<label>ENTER PROPERTY AVAILABILITY</label>
							<form:input path="availability" placeholder="Yes/No"/>
							<br>
							<br>
							<label>ENTER WATER COST</label>
							<form:input path="watercost"/>
							<br>
							<br>
							<label>CCTV</label>
							<form:input path="cctv" placeholder="Yes/No" />
							<br>
							<br>
							<label>NUMBER OF ROOM</label>
							<form:input path="numberofrooms" placeholder="1bhk,2bhk,3bhk" />
							<br>
							<br>
							<label>TYPE OF ROOM</label>
							<form:input path="typeofroom" placeholder="Appartment,House,etc"/>
							<br>
							<br>
							<form:hidden path="id" />
							<form:button class="btn btn-danger">Submit</form:button>
						</form:form>
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
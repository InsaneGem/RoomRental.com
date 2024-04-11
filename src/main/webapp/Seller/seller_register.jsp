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
body{
background-image : url("https://images.pexels.com/photos/1698618/pexels-photo-1698618.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");
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
	<%@ include file="../Components/navbar.jsp"%>
	<div class="container p-5">
		<div class="row">
			<div class="col-md-10 offset-md-1">
				<div class="car paint-card">
					<div class="card-body">
					<h3>SELLER REGISTERATION</h3><br>
						<form:form action="submitForm" method="post"
							modelAttribute="seller">
							<label>NAME : </label>	<form:input path="name" placeholder="Sandeep kumar" />
							<br>
							<br>
							<label>MOBILE : </label>	<form:input path="mobile" placeholder="9876543210" />
							<br>
							<br>
							<label>EMAIL : </label>	<form:input path="email" placeholder="sandy@gmail.com" />
							<br>
							<br>
							<label>PASSWORD : </label>	<form:password path="password" placeholder="san@#$1234" />
							<br>
							<br>
							<label>ADDRESS : </label>	<form:input path="address" placeholder="Banglore, Hyderabad" />
							<br>
							<br>
							<label>AGE : </label>	<form:input path="age" placeholder="20" />
							<br>
							<br>
							<form:button class="btn btn-danger">Submit</form:button>
						</form:form>
						<br> <label>Already Account?<a
							href="${pageContext.request.contextPath }/Seller/seller_login.jsp">
								Sign In</a></label>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
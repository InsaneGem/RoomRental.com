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
					<h3>CUSTOMER REGISTER</h3><br>
	${sucess}
	<form:form action="submitFormUser" method="post" modelAttribute="user">
	<label>NAME :</label>	<form:input path="name" placeholder="Sandeep kumar" />
		<br>
		<br>
		<label>MOBILE : </label>	<form:input path="mobile" placeholder="3784354433" />
		<br>
		<br>
		<label>EMAIL : </label>	<form:input path="email" placeholder="sandy123@gmail.com" />
		<br>
		<br>
		<label>PASSWORD : </label>	<form:password path="password" placeholder="sa@#$123" />
		<br>
		<br>
		<label>ADDRESS : </label>	<form:input path="address" placeholder="Banglore, Hyderabad" />
		<br>
		<br>
		<label>AADHAR NUMBER : </label>	<form:input path="adharnumber" placeholder="IWDS323C" />
		<br>
		<br>
		<form:button class="btn-danger btn">Submit</form:button>
	</form:form><br>
	<label>Already Account?<a  href="${pageContext.request.contextPath}/User/user_login.jsp"> Sign In</a></label>
						
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
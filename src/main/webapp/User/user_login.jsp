<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
		<div class="column">
			<div class="col-md-5 offset-md-3">
				<div class="car paint-card">
					<div class="card-body">
						<h3>CUSTOMER LOGIN</h3>
						${fail} ${passwordChange} ${profile} ${viewCart} ${sendotp }${confirmpwd}${userlogout}
						${add_item_fail}${error}<br>
						<form action="${pageContext.request.contextPath}/userLogin"
							method="post">
						<label>EMAIL :</label>	<input type="email" placeholder="sandy@gmail.com" name="email">
							<br>
							<br> 
						<label>PASSWORD :</label>	<input type="password" placeholder="san@#$123" name="password">
							<br>
							<br> 
							<input type="submit" value="SUBMIT" class="btn-danger btn">
						</form>
						<br> <label>Not Register?<a
							href="${pageContext.request.contextPath}/emptyUser">Sign Up</a></label><br>
						<label><a
							href="${pageContext.request.contextPath}/User/user_forgot_password.jsp">Forgot
								Password?</a></label>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
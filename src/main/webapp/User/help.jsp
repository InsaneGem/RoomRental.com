<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index Home Page</title>
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
		<div class="row">
			<div class="col-md-10 offset-md-1">
				<div class="car paint-card">
					<div class="card-body">
						<h1>Need help?</h1>
						<p>If you're a customer in need of assistance, RoomRenting.com
							is here to help every step of the way. Our dedicated support team
							is committed to ensuring that your rental experience is smooth,
							seamless, and stress-free. Whether you have questions about a
							specific listing, need assistance navigating the platform, or
							require guidance with your rental search, we're here to provide
							prompt and personalized assistance. Simply reach out to us
							through our contact page or utilize our live chat feature for
							real-time support. Your satisfaction is our top priority, and
							we're here to make sure that your journey with RoomRenting.com is
							a positive and rewarding one.</p>
						<br>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
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
		url("https://images.pexels.com/photos/3183150/pexels-photo-3183150.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");
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
	<%@ include file="../Components/navbar.jsp"%>
	<div class="container p-5">
		<div class="row">
			<div class="col-md-10 offset-md-1">
				<div class="car paint-card">
					<div class="card-body">
						<h1>About RoomRental.com</h1>
						<p>RoomRenting.com is more than just a platform for rental
							accommodations; it's a beacon of innovation and convenience in
							the realm of property rentals. Founded with a vision to
							revolutionize the way individuals find and rent rooms, our
							platform embodies a commitment to excellence and customer
							satisfaction.</p>
						<br>
						<p>Driven by a passion for connecting people with their ideal
							living spaces, our team works tirelessly to curate an
							unparalleled selection of rental listings, ensuring that every
							user finds a place to call home. With a focus on user experience
							and functionality, RoomRenting.com offers intuitive tools and
							features designed to simplify the rental process for both tenants
							and landlords.</p>
						<br>
						<p>At RoomRenting.com, we believe in transparency, integrity,
							and trust. Our platform operates on the principles of fairness
							and equality, ensuring that every user—regardless of background
							or circumstance—has access to the same opportunities and
							resources.</p>
						<br>
						<p>But RoomRenting.com is more than just a website; it's a
							community. We foster a culture of inclusivity and collaboration,
							bringing together tenants, landlords, and industry professionals
							in a shared pursuit of excellence. With a dedication to
							continuous improvement and innovation, we strive to set new
							standards of excellence in the realm of room rentals.</p>
						<br>
						<p>Join us on our mission to redefine the rental experience.
							Whether you're searching for your next home or looking to
							optimize your rental portfolio, RoomRenting.com is here to
							accompany you every step of the way. Welcome to
							RoomRenting.com—where your rental journey begins.</p>
						<br>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
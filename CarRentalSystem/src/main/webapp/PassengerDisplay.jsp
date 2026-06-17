<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Profile</title>
<link rel="stylesheet" type="text/css" href="CSS/PassengerStyles/PassengerDisplay.css">
<link href="./CSS/headerAndFooterCss.css" rel="stylesheet" type="text/css">
   
	<!-- font awesome icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <!-- bootstrap icons link -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <!-- bootstrap css -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

</head>
<body>


<!-- start header -->
	<div id="header" class="row">
   	<div class="col-3">
       	<!-- add logo here  -->
       	<img src="./images/logo.png" alt="logo" width="110%">
   	</div>
   	<div class="col-6">
       	<!-- navigation -->
       	<div id="navBar" class="row container">
           	<div class="col"><a href="./LoggedIndex.jsp">HOME</a></div>
           	<div class="col"><a href="VehicleDisplayHomeServlet?id=vehicle">VEHICLES</a></div>
           	<div class="col"><a href="ServiceServlet">SERVICES</a></div>
           	<div class="col"><a href="RatingServlet">RATES</a></div>
           	<div class="col"><a href="ContactUsServlet">CONTACT US</a></div>
       	</div>
   	</div>
   	<div class="col">
       	<!-- login button -->
       	 <h3 id="loginBtn"><a href="./LogOutServlet"><i class="bi bi-person-circle">LogOut</i></a></h3>
   	</div>
    </div>
	<!--End header -->
	<div class="formWrapper">
	<div class="main-container">
	
		<div class="profile-head">
			<h2>My Profile</h2>
		</div>
		<div>
			<table class="Ptable">
				<thead>
					<tr><th>PassengerID </th>
						<th>Name </th>
						<th>Phone </th>
						<th>Address </th>
						<th>Email </th>
						<th>Age </th>
						<th>Gender </th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="psn" items="${passengerList}">
					
					<tr>
						<td>${psn.getID()} </td>
						<td>${psn.name} </td>
						<td>${psn.phone} </td>
						<td>${psn.address} </td>
						<td>${psn.email}</td>
						<td>${psn.age} </td>
						<td>${psn.gender} </td>
					
					</tr>
					
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="ButtonsContainer">
			<a href="PassengerUpdateJSPServlet"><button>Update Profile</button></a>
			<a href="PassengerDeleteServlet" onclick="return confirm('Do you want to delete the Profile?');"><button>Delete Profile</button></a>
		</div>
	</div>
	</div>
	
	<!-- footer -->
        <div class="row" id="footer">
            <div class="col-5">
                <h3>For <span>Rent</span></h3>
                <h5>Explore the road with ease! We offer reliable, affordable, and well-maintained rental cars for every journey. 
                    Whether it's a business trip, vacation, or special event, we've got the perfect ride for you. Book now and drive with confidence!</h5>
            </div>
            <div class="col-1"></div>
            <div class="col">
                <h4>Company</h4>
                <p>Home</p>
                <p>Vehicles</p>
                <p>Services</p>
                <p>Rates</p>
                <p>Contact Us</p>
            </div>
            <div class="col">
                <h4>Locations</h4>
                <p>Piliyandala ,<br>Colombo 2 ,Sri Lanka <br> 077-8907002</p> <br>
                <p>Piliyandala ,<br>Colombo 2 ,Sri Lanka <br> 077-8907002</p>
            </div>
            <div class="col" id="sMedia">
                <h4>Social Media</h4>
                <div class="row">
                    <div class="col"><p><i class="bi bi-whatsapp"></i></p></div>
                    <div class="col"><p><i class="bi bi-twitter"></i></p></div>
                    <div class="col"><p><i class="bi bi-facebook"></i></p></div>
                    <div class="col"><p><i class="bi bi-instagram"></i></p></div>
                </div>
                
                
                
                
            </div>
        </div>



    <!-- bootstrap css -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Passenger Register</title>
<link rel="stylesheet" type="text/css" href="CSS/PassengerStyles/PassengerSignup.css ">
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
           	<div class="col"><a href="./index.jsp">HOME</a></div>
           	<div class="col"><a href="VehicleDisplayHomeServlet?id=vehicle">VEHICLES</a></div>
           	<div class="col"><a href="ServiceServlet">SERVICES</a></div>
           	<div class="col"><a href="RatingServlet">RATES</a></div>
           	<div class="col"><a href="ContactUsServlet">CONTACT US</a></div>
       	</div>
   	</div>
   	<div class="col">
       	<!-- login button -->
       	 <h3 id="loginBtn"><a href="./All_Login_Page.jsp"><i class="bi bi-person-circle"></i></a></h3>
   	</div>
    </div>
	<!--End header -->
 <div class="formWrapper">
 <div class="formMain">
	 <div class="PsignForm">
		<h2 class="ph2"> SignUp</h2>
		 <form action="PassengerRegServlet" method="get">
		 
		  <label>Full Name </label><input class = "textfields" type="text" name="name" placeholder="Full Name" required><br>
		  <label>Phone </label><input class = "textfields" type="text" name="phone" placeholder="Mobile" maxlength=10 required><br>
		  <label>Email </label><input class = "textfields" type="text" name="email" placeholder="E-mail" required><br>
		  <label>Address </label><input class = "textfields" type="text" name="address" placeholder="Address" required><br>
		  <label>Age </label><input class = "textfields" type="text" name="age" placeholder="Age" required><br>
		  <label>Gender : </label>Male<input class = "inputradio" type="radio" name="gender" value="male"> Female <input class = "inputradio" type="radio" name="gender" value="female"> <br>
		  
		  <input type="submit" class="btn" value="SignIn" name="loginbtn">

		 
		 </form>
	</div>
	 <div class="Pdescription">
		<h2>Experience </h2>
		<h2>the best Service</h2>
		<h3>from</h3>
		<h2>Our Company</h2>
		<p>Join our vehicle rental platform as a passenger and enjoy affordable, flexible, and eco-friendly rides whenever and wherever you need them</p>
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
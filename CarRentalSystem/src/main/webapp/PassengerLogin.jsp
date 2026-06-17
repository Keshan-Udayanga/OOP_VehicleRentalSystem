<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Passenger Login</title>
<link rel="stylesheet" type="text/css" href="CSS/PassengerStyles/PassengerLogin.css">
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
	<div id="formMain">
		<div class="PsignForm">
		<h2 style="color: #333; font-size: 2rem; text-align: center; margin-bottom: 1.5rem;">LogIn </h2>
		 <form action="PassengerLoginServlet" method="post">
		   <label>Email<input type="text" class="textfields" name="email" placeholder="Email" required></label><br>
		   <label>Password<input type="password" class="textfields" name="password" placeholder="Password" required></label><br>
		   <input type="submit" class="btn" value="LogIn" class="">
		   <div class="noAccount"><a href="PassengerReg.jsp">Don't have an account?</a></div>
		 </form>
		</div>
		<div class="Pdescription">
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
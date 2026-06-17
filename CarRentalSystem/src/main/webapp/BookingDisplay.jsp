<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<link href="./CSS/headerAndFooterCss.css" rel="stylesheet" type="text/css">
	<!-- font awesome icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <!-- bootstrap icons link -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <!-- bootstrap css -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

	<style>
        body {
            font-family: Arial, sans-serif;
            background: #f2f2f2;
            margin: 0;
            padding: 0;
            overflow-x:hidden;
        }
        h2 {
            text-align: center;
            color: #007BFF;
            font-weight: bold;
            margin-bottom: 30px;
            font-weight: bold;
      		text-shadow: 1px 1px 2px rgba(0, 0, 139, 0.5);
        }
        #det{
        	max-width: 45%;
			box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
			backdrop-filter: blur(50px);
			-webkit-backdrop-filter: blur(8px);
			border: 1px solid rgba(255, 255, 255, 0.18); 
			margin-top: 20px;
			border-spacing: 8px 12px;  
			border-radius: 20px;
			border-collapse: separate;	
			padding: 30px;
			align-items: center;
        }
        .info-group {
            display: flex;
		    justify-content: space-between;
		    margin-bottom: 15px;
		    font-size: 17px;
		    padding: 8px 20px;
		    border-bottom: 1px solid #ccc
        }
        .info-label {
		    font-weight: bold;
		    color: #004080;
		    width: 40%;
		    text-align: left;
		    padding-right;
		    margin-left:80px;
        }
        .info-value {
		    width: 60%;
		    text-align: left;
		    color: white;
		    margin-left: 20px;
        }
        .button-container {
            text-align: center;
            margin-top: 30px;
        }
        
        #update{
        	background-color: #32CD32;
        }
        
        #update:hover {
            background-color: #208020;
        }
        #delete{
        	background-color: #FF6347;
        }
        
        #delete:hover {
            background-color: #CD5C5C;
        }                
        #update , #delete{
            margin: 10px;
            padding: 12px 25px;
            color: white;
            border: none;
            border-radius: 6px;
            font-weight: bold;
            cursor: pointer;
        }
        
         body {
   	     font-family: Arial, sans-serif;
         background: url("images/Bcar.jpeg") no-repeat center center fixed;
         background-size: cover;
         margin: 0;
         padding: 0;
         overflow-x: hidden;
   }
    </style>

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
           	<div class="col"><a href="#">HOME</a></div>
           	<div class="col"><a href="Vehicle.jsp">VEHICLES</a></div>
           	<div class="col"><a href="">SERVICES</a></div>
           	<div class="col"><a href="">RATES</a></div>
           	<div class="col"><a href="">CONTACT US</a></div>
       	</div>
   	</div>
   	<div class="col">
       	<!-- login button -->
       	 <h3 id="loginBtn"><a href="./All_Login_Page.jsp"><i class="bi bi-person-circle"></i></a></h3>
   	</div>
    </div>
	<!-- End header -->
	
	<!-- -----------------------------Main web page content area - start-------------------------------------------------- -->	
	
<div class="container" id="det">
    <h2>My Booking</h2>
    
    <c:forEach var="booking" items="${allBooking}">
    <!-- Set attributes for each booking -->

    <div class="info-group"><span class="info-label">Name:</span><span class="info-value">${booking.getName()}</span></div>
    <div class="info-group"><span class="info-label">Email:</span><span class="info-value">${booking.getEmail()}</span></div>
    <div class="info-group"><span class="info-label">Phone Number:</span><span class="info-value">${booking.getPhoneNo()}</span></div>
    <div class="info-group"><span class="info-label">Address:</span><span class="info-value">${booking.getAddress()}</span></div>
    <div class="info-group"><span class="info-label">Is a driver needed?:</span><span class="info-value">${booking.getDriver()}</span></div>
    <div class="info-group"><span class="info-label">Pickup Location:</span><span class="info-value">${booking.getP_Location()}</span></div>
    <div class="info-group"><span class="info-label">Drop Location:</span><span class="info-value">${booking.getD_Location()}</span></div>
    <div class="info-group"><span class="info-label">Direction:</span><span class="info-value">${booking.getDirection()}</span></div>
    <div class="info-group"><span class="info-label">Departure Date:</span><span class="info-value">${booking.getD_Date()}</span></div>
    <div class="info-group"><span class="info-label">Departure Time:</span><span class="info-value">${booking.getD_Time()}</span></div>

    <!-- Buttons -->
    <div class="button-container">
        <form action="BookingGetById" method="post" style="display: inline;">
        <input type="hidden" value="${booking.getId()}" name="id">
            <button type="submit" id= "update">Update</button>
        </form>
        <form action="BookingDeleteServlet" method="post" style="display: inline;">
            <input type="hidden" name="id" value="${booking.getId()}">
            <button type="submit" id="delete">Delete</button>
        </form>
        
    </div>
</div>
	</c:forEach>
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
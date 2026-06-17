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
      background: #fff;
      margin: 0;
      padding: 0;
      overflow-x:hidden;
    }
    
    #form{
    
    max-width: 50%;
	box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
	backdrop-filter: blur(50px);
	-webkit-backdrop-filter: blur(8px);
	border: 1px solid rgba(255, 255, 255, 0.18); 
	margin-top: 20px;
	border-spacing: 8px 12px;  
	border-radius: 20px;
	border-collapse: separate;	
	padding: 30px; 
    }

    

    .container h2 {
      text-align: center;
      color: #007BFF;
      margin-bottom: 30px;
      margin-top: 15px;
      font-weight: bold;
      text-shadow: 1px 1px 2px rgba(0, 0, 139, 0.5);
    }

    .container label {
      font-weight: bold;
      color: #007BFF;
      margin-top: 10px;
      
    }

    .container input, select, textarea {
      width: 100%;
      padding: 6px;
      margin-bottom: 20px;
      border: 1px solid #ccc;
      border-radius: 6px;
      font-size: 16px;
    }


    .container .section-title {
      font-size: 20px;
      color: #0056b3;
      font-weight: bold;
      margin: 30px 0 10px 0;
    }

    .container .button-group {
      display: flex;
      justify-content: space-between;
      margin-top: 20px;
    }

    .container button {
      background: #007BFF;
      color: white;
      border: none;
      padding: 12px 25px;
      border-radius: 6px;
      font-weight: bold;
      cursor: pointer;
    }

    .container button:hover {
      background-color: #0056b3;
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
<c:forEach var="booking" items="${booking}">
<div class="container" id = "form">
	<form action="BookingUpdateServlet" method="post">
    <!-- User Information -->
    <div class="section-title">User Information</div>
    
    <label for="id">Id:</label>
    <input type="text" id="id" name="id" value="${booking.getId()}" readonly>

    <label for="name">Name:</label>
    <input type="text" id="name" name="name" value="${booking.getName()}" >

    <label for="email">Email:</label>
    <input type="email" id="email" name="email" value="${booking.getEmail()}" >

    <label for="phoneNo">Phone Number:</label>
    <input type="tel" id="phoneNo" name="phoneNo" value="${booking.getPhoneNo()}" >

    <label for="address">Address:</label>
    <textarea id="address" name="address" rows="2" value="${booking.getAddress()}" >${booking.getAddress()}</textarea>

    <label for="driver">Is a driver needed?</label>
    <select id="driver" name="driver"required>
      <option value="${booking.getId()}">${booking.getDriver()}</option>
      <option value="">--Select--</option>
      <option value="Yes">Yes</option>
      <option value="No">No</option>
    </select>

    <!-- Journey Information -->
    <div class="section-title">Journey Information</div>

    <label for="p_Location">Collection Address:</label>
    <input type="text" id="p_Location" name="p_Location" value="${booking.getP_Location()}" >

    <label for="d_Location">Destination Address:</label>
    <input type="text" id="d_Location" name="d_Location" value="${booking.getD_Location()}" >

    <label for="direction">Direction:</label>
    <select id="direction" name="direction">
      <option value="${booking.getId()}">${booking.getDirection()}</option>
      <option value="Oneway">Oneway</option>
      <option value="Return">Return</option>
    </select>

    <label for="d_Date">Departure Date:</label>
    <input type="date" id="d_Date" name="d_Date" value="${booking.getD_Date()}" >

    <label for="d_Time">Departure Time:</label>
    <input type="time" id="d_Time" name="d_Time" value="${booking.getD_Time()}" >

    <!-- Buttons -->
    <div class="button-group">
      <button type="submit">Submit</button>
    </div>
  </form>
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
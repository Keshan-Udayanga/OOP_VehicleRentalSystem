<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Vehicle Details</title>

    <link href="./CSS/headerAndFooterCss.css" rel="stylesheet" type="text/css">
    <link href="./CSS/vehicles.css" rel="stylesheet" type="text/css">
	<!-- font awesome icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <!-- bootstrap icons link -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <!-- bootstrap css -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
    	body{		
			overflow-x:hidden;
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
           	<div class="col"><a href="./LoggedIndex.jsp">HOME</a></div>
            <div class="col"><a href="VehicleDisplayHomeServlet?id=vehicle">VEHICLES</a></div>
            <div class="col"><a href="ServiceServlet">SERVICES</a></div>
            <div class="col"><a href="RatingServlet">RATES</a></div>
            <div class="col"><a href="ContactUsServlet">CONTACT US</a></div>
       	</div>
   	</div>
   	<div class="col">
       	<!-- login button -->
       	 <h3 id="loginBtn"><a href="UserProfileServlet"><i class="bi bi-person-circle">Profile</i></a></h3>
   	</div>
    </div>
	<!-- start header -->
	
	<!-- -----------------------------Main web page content area - start-------------------------------------------------- -->

    
    <div class="container main">
    
    <div id="topic" class="container" style="padding:0px 60px;">
    	<h4><span>O</span>ur <span>V</span>ehicles <span>F</span>or <span>R</span>ent</h4>
    	<hr>
    </div>
    
    <div class="container">
	    
		    <div class="row" id="AllVehicleOwnerNamesList">
		
				<c:forEach var="vehi" items="${vehicle}">
				
					<div class="col-sm-3 mb-4" style="padding:0px;">	
			            <div class="vehicleAllDetails p-2">
			            	
			            	<!-- select vehicle type and display related image -->
			            	<c:if test="${vehi.getType() == 'Car'}">
							    <img class="VehicleImg img-fluid mb-2" src="./images/car.jpg" alt="" width="50%" height="">
							</c:if>
							<c:if test="${vehi.getType() == 'Van'}">
							    <img class="VehicleImg img-fluid mb-2" src="./images/van.jpg" alt="" width="50%" height="">
							</c:if>
							<c:if test="${vehi.getType() == 'Truck'}">
							    <img class="VehicleImg img-fluid mb-2" src="./images/truck.jpg" alt="" width="50%" height="">
							</c:if>
							<c:if test="${vehi.getType() != 'Car' and vehi.getType() != 'Van' and vehi.getType() != 'Truck'}">
							    <img class="VehicleImg img-fluid mb-2" src="./images/photo.jpg" alt="" width="50%" height="">
							</c:if>
			            	
				            
				            <div class="row">
				                <h2>${vehi.getBrand() }  ${vehi.getModel() } </h2>
				            </div>
				            <div class="row" class="d-flex justify-content-around my-2">
				                <div class="col">
									<img class="vi" src="./images/doorIcon.png">
									<span>${vehi.getDoors() }</span>
				                </div>
				                <div class="col">
									<img class="vi" src="./images/seat.png">
									<span>${vehi.getSeats() }</span>
				                </div>
				                <div class="col-5">
									<img class="vi" src="./images/gas-pump.png">
									<span> ${vehi.getFuleType() } </span>
				                </div>	                
				                <div class="row container"> <a href="BookingAdd.jsp" class="btnBooking" type="button">Book Now</a> </div>
				            </div>
			            
			            </div>	
			        </div>
					
					
				</c:forEach>
			
			</div>
	    
	    </div>
    
	</div>
    	
    	
    	
    	
    	
    	
    	
    <!-- -----------------------------Main web page content area - end-------------------------------------------------- -->
    
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
        

</body>
</html>
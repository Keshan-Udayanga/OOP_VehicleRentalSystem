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
		    background-image: url('./images/VehicleProfBg.jpg'); /* Replace with your image path */
		    background-size: cover;
		    background-repeat: no-repeat;
		    background-position: center;
		    background-attachment: fixed; /* Optional: makes it stay in place when scrolling */
		    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
		    overflow-x:hidden;
		}
        
        .vehicle-form {
            max-width: 70%;
            margin: 50px auto;
            padding: 30px;
            background-color: rgba(93, 93, 93, 0.7);
            border-radius: 15px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }
        .form-label {
            font-weight: 600;
        }
        #btn{
        	margin-top:50px;
        }
        #btn button{
        	width:200px;
        }
		.vehicle-form label{
			color:;
		}
		label{
			color:white;
			font-weight:bolder;
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
       	 <h3 id="loginBtn"><a href="./LogOutServlet"><i class="bi bi-person-circle">LogOut</i></a></h3>
   	</div>
    </div>
	<!-- start header -->
	
	<!-- -----------------------------Main web page content area - start-------------------------------------------------- -->

	
<div class="row" id="main">

	
	
	<!-- display vehicle profile details -->
	
	<form action="VehicleUpdateServlet" method="post">
		<div class="vehicle-form">
		    <h4 class="text-center mb-4">Vehicle Details</h4>
		
		    <div class="row g-4">
		        <div class="col-md-6">
		            <label class="form-label">Vehicle ID</label>
		            <input name="vehicleID" type="text" class="form-control" value="${vehiProfile.getVehicleID() } " readonly>
		        </div>
		        <div class="col-md-6">
		            <label class="form-label">Owner Name</label>
		            <input name="ownerName" type="text" class="form-control" value="${vehiProfile.getOwner() } " >
		        </div>
		        <div class="col-md-6">
		            <label class="form-label">Contact</label>
		            <input name="contact" type="text" class="form-control" value="${vehiProfile.getPhone() } " >
		        </div>
		        <div class="col-md-6">
		            <label class="form-label">Email</label>
		            <input name="email" type="text" class="form-control" value="${vehiProfile.getEmail() } " >
		        </div>
		        <div class="col-md-6">
		            <label class="form-label">Vehicle Type</label>
		            <select class="form-control" id="vType" name="vType" required style="width:100%;">
				        <option value="${vehiProfile.getType() } ">${vehiProfile.getType() } </option>
				        <option value="Car">Car</option>
				        <option value="Van">Van</option>				        	
    				  	<option value="Truck">Trucks</option>
				     </select>
		        </div>
		        <div class="col-md-6">
		            <label class="form-label">Last Licensed Date</label>
		            <input name="licenseDate" type="text" class="form-control" value="${vehiProfile.getLicense_date() } " >
		        </div>
		        <div class="col-md-6">
		            <label class="form-label">Brand</label>
		            <input name="brand" type="text" class="form-control" value="${vehiProfile.getBrand() } ">
		        </div>
		        <div class="col-md-6">
		            <label class="form-label">Model</label>
		            <input name="model" type="text" class="form-control" value="${vehiProfile.getModel() } " >
		        </div>
		        <div class="col-md-6">
		            <label class="form-label">Color</label>
		            <input name="color" type="text" class="form-control" value="${vehiProfile.getColor() } " >
		        </div>
		        <div class="col-md-6">
		            <label class="form-label">Manufacture Year</label>
		            <input name="year" type="text" class="form-control" value="${vehiProfile.getManufactureYear()}" placeholder="${vehiProfile.getManufactureYear() } ">
		        </div>
		        <div class="col-md-6">
		            <label class="form-label">Doors</label>
		            <input name="doors" type="text" class="form-control" value="${vehiProfile.getDoors()}" placeholder="${vehiProfile.getDoors() } " >
		        </div>
		        <div class="col-md-6">
		            <label class="form-label">Seats</label>
		            <input name="seats" type="text" class="form-control" value="${vehiProfile.getSeats()}" placeholder="${vehiProfile.getSeats() } " >
		        </div>
		        <div class="col-md-6">
		            <label class="form-label">Transmission Type</label>
		            <select class="form-control" id="fuelType" name="transmission" required>
			        	<option value="${vehiProfile.getTransmissionType() } ">${vehiProfile.getTransmissionType() }</option>
			        	<option value="">Select</option>
			        	<option value="Manual">Manual</option>
			        	<option value="Automatic">Automatic</option>
			      	</select>
		        </div>
		        <div class="col-md-6">
		            <label class="form-label">Fuel Type</label>
			      	<select class="form-control" id="fuelType" name="fuelType" required>
			        	<option value="${vehiProfile.getFuleType() } ">${vehiProfile.getFuleType() } </option>
			        	<option value="Petrol">Petrol</option>
			        	<option value="Diesel">Diesel</option>
			        	<option value="Hybrid">Hybrid</option>
			        	<option value="Electric">Electric</option>
			      	</select>
		        </div>
		        <div class="col-12">
		            <label class="form-label">License</label>
		            <input name="license" type="text" class="form-control" value="${vehiProfile.getLicenPlateNum() } " >
		        </div>
		        
		        <div class="row" style="text-align:center;" id="btn">
		        	<div class="col-5 "><div class="btn btn-sm btn-danger"> <a href="VehicleProfileDeleteServlet?id=${vehiProfile.getVehicleID()}&email=${vehiProfile.getEmail()}"> DELETE </a> </div></div>
		        	<div class="col"></div>
		        	<div class="col-5"> <button type="submit" class="btn btn-sm btn-info">UPDATE</button></div>
		        </div>
        
		    </div>
		</div>
		
  		</form>
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
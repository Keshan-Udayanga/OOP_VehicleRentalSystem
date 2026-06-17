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
    #main{
    	margin-top:50px;
    }
    
    #AllVehicleOwnerNamesList{
    	font-family: Georgia, 'Times New Roman', Times, serif;
    	margin-left:100px;
    	margin-top:20px;
    	padding:30px 50px;
    	background-color: rgba(255,255,255,0.5);
    	border-radius: 12px;
    	box-shadow: 0 0 15px rgba(0,0,0,0.15);
    }
    
    #AllVehicleOwnerNamesList img{
    	width:45px;
    	height:auto;
    }
    
    #AllVehicleOwnerNamesList>div{
    	margin-bottom:20px;
    	padding:15px 10px 5px 10px;
    	background-color: white;
    	border-radius: 12px;
    	box-shadow: 0 0 15px rgba(0,0,0,0.1);
    }
    
    #AllVehicleOwnerNamesList>div:hover{
    	scale:0.98;
    	transition:0.2s;
    }
    .form-container {
		background:rgba(65, 65, 65, 0.9);
      	max-width: 800px;
      	margin: 20px auto;
      	padding: 40px;
      	border-radius: 12px;
     	box-shadow: 0 0 15px rgba(0,0,0,0.12);
    }
    .form-title {
      	text-align: center;
      	color: #0d6efd;
      	margin-bottom: 30px;
    }
    input{
    	width:100%;
    	height:35px;
    	border-radius:5px;
    	border:none;
    }
    
    select{
    	height:35px;
    	border-radius:5px;
    	border:none;
    
    }
    .select{
    	padding: 0px 10px;
    }
    
    input,.select{
    	margin-bottom:15px;
    	margin-top:5px;
    }
    label{
    	font-size:17px;
    	font-weight:500;
    	color:white;
    }
    
    .form-container button{
    	margin-top:20px;
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
	<!-- start header -->
	
	<!-- -----------------------------Main web page content area - start-------------------------------------------------- -->

	
<div class="row" id="main">

	<div class="col" id="AllVehicleOwnerNamesList">
	
		<c:forEach var="vehi" items="${vehicle}">
			
			<div class="row">
				<div class="col-2">
					<img alt="" src="./images/vehicleOwnerIcon.png">
				</div>
				<div class="col">
					<h6> ${vehi.getOwner() } </h6>
					<p> ${vehi.getPhone() } </p> 
				</div>
			</div>
			
		</c:forEach>
		
	</div>
		
		
	<div class="col-8">
		
		<!-- start form -->
		<div class="container form-container">
		
		
		 	<h3 class="form-title" style="color:white;">Register Your Vehicle for Rent</h3>
		
		  	<form action="VehicleAddServlet" method="post">
		
		    	<div class="">
		      		<div><label for="ownerName">Owner Name</label></div>
		      		<input type="text" id="ownerName" name="ownerName" required>
		    	</div>
		
		    	<div class="">
		      		<div><label for="contact">Contact Number</label></div>
		      		<input type="tel" id="contact" name="contact" required>
		    	</div>
		    	
		    	<div class="">
		      		<div><label for="email">E-mail</label></div>
		      		<input type="email" id="email" name="email" required>
		    	</div>
		    	
		    	<div class="row">
			     	<div class="col">
			        	<label for="vType" style="margin-bottom:5px;">Vehicle Type</label><br>
			        	<select id="vType" name="vType" required style="width:100%;">
				        	<option value="">Select</option>
				        	<option value="Car">Car</option>
				        	<option value="Van">Van</option>				        	
    				  		<option value="Truck">Trucks</option>
				     	 </select>
			      	</div>
			      	<div class="col">
			        	<label for="licenseDate" >Last Licensed Date</label>
			       	 <input type="date"  id="licenseDate" name="licenseDate" required>
			      	</div>
		    	</div>
		
		    	<div class="row">
			     	<div class="col">
			        	<label for="brand">Brand</label>
			        	<input type="text" id="brand" name="brand" required>
			      	</div>
			      	<div class="col">
			        	<label for="model" >Model</label>
			       	 <input type="text"  id="model" name="model" required>
			      	</div>
		    	</div>
		
		    	<div class="row">
		      		<div class="col">
		       	 		<label for="color">Vehicle Color</label>
		      	  		<input type="text"  id="color" name="color" required>
		      		</div>
		     	 	<div class="col">
		       	 		<label for="year">Manufacture Year</label>
		       	 		<input type="number"  id="year" name="year" min="1980" max="2025" required>
		     	 	</div>
		   	 	</div>
		
		    	<div class="row">
		     	 	<div class="col">
		       	 		<label for="seats">Number of Seats</label>
		       	 		<input type="number"  id="seats" name="seats" required>
		      		</div>
		     		<div class="col">
		    	   		<label for="doors">Number of Doors</label>
		    	    	<input type="number" id="doors" name="doors" required>
		   	   		</div>
		  	  	</div>
		
		    	<div class="row select">
		      		<label for="transmission">Transmission Type</label>
			      	<select id="transmission" name="transmission" required>
			        	<option value="">Select</option>
			        	<option value="Manual">Manual</option>
			        	<option value="Automatic">Automatic</option>
			     	 </select>
		    	</div>
		
		    	<div class="row select">
		      		<label for="fuelType">Fuel Type</label>
			      	<select id="fuelType" name="fuelType" required>
			        	<option value="">Select</option>
			        	<option value="Petrol">Petrol</option>
			        	<option value="Diesel">Diesel</option>
			        	<option value="Hybrid">Hybrid</option>
			        	<option value="Electric">Electric</option>
			      	</select>
		    	</div>
		
		    	<div class="">
		      		<label for="license">License Plate Number</label>
		      		<input type="text" id="license" name="license" required>
		    	</div>
		
		    <div class="row">
		      <button type="submit" class="btn btn-primary btn-lg">Submit Vehicle</button>
		    </div>
		
		  </form>
		  
		  </div>
		  <!-- end form -->
		  
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
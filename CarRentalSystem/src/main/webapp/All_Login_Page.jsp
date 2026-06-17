<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <!-- AOS animation -->
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    
    <style>
    	body {
            background-image: url('./images/VehicleProfBg.jpg');
			background-size: cover;
			background-repeat: no-repeat;
			background-position: center;
			background-attachment: fixed; 
			font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
			overflow-x:hidden;
            height: 100vh;
            display: ;
            align-items: center;
            justify-content: center;
        }
        
        #row {
			position: absolute;
			top: 50%;
			left: 50%;
			transform: translate(-50%, -50%);
			width: 100%; 
			display: flex;
			justify-content: center;
			gap: 40px; 
		}


        .login-box {
            background: rgba(255, 255, 255, 0.1);
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 400px;
            text-align:center;
            color:white;
            font-family: Georgia, 'Times New Roman', Times, serif;
            backdrop-filter:blur(5px);
            -webkit-bacdrop-filter:blur(5px);
        }
        
        .login-box img{
        	width:120px;
        	height:auto;
        }
        
        .login-box h2{
        	font-weight:700;
        }
        .login-box button{
        	width:180px;
        	height:50px;
        	font-weight:1000;
        	font-size:15px;
        	background:rgba(255, 255, 255, 0.7);
        	color:black;
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
       	 <h3 id="loginBtn"><a href="#"><i class="bi bi-person-circle"></i></a></h3>
   	</div>
    </div>
	<!-- start header -->
	
	
	<!-- -----------------------------Main web page content area - start-------------------------------------------------- -->
	<div class="container" id ="main">
		
		<div class="row" id="row">
		
			<div data-aos="fade-up" data-aos-duration="1500" class="login-box col">
		        <h2>Passenger</h2>
		        <form action="PassengerLogin.jsp" method="post">
		            <div class="mb-3">
		                <img alt="" src="./images/passenger.png">
		            </div>
		
		            <button type="submit" class="btn btn-login btn-outline-light btn-sm">Login as Passenger</button>
		        </form>
		    </div>
		    
		    <div data-aos="fade-up" data-aos-duration="1500"  class="login-box col">
		        <h2>Vehicle Owner </h2>
		        <form action="Vehicle_login.jsp" method="post">
		            <div class="mb-3">
		                <img alt="" src="./images/seller.png">
		            </div>
		
		            <button type="submit" class="btn btn-login btn-outline-light btn-sm">Add Your Vehicle</button>
		        </form>
		    </div>
		    
		    <div data-aos="fade-up" data-aos-duration="1500"  class="login-box col">
		        <h2>Car Driver</h2>
		        <form action="DriverLoginPage.jsp" method="post">
		            <div class="mb-3">
		                <img alt="" src="./images/taxi-driver.png">
		            </div>
		
		            <button type="submit" class="btn btn-login btn-outline-light btn-sm">Login as Driver</button>
		        </form>
		    </div>
		
		</div>
	    
	    
		
	</div>	
	<!-- -----------------------------Main web page content area - end-------------------------------------------------- -->
	
	
	<!-- AOS Animation -->
	<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
	<script> AOS.init(); </script>

</body>
</html>
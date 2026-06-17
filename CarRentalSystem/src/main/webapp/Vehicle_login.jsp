<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Vehicle Owner Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- Bootstrap CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
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
            
            align-items: center;
            justify-content: center;
        }

        .login-box {
       	 	top:30%;
            left:38%;
            transform: translate(0%, 0%);
            position: fixed; 
            background: rgba(255, 255, 255, 0.3);
            padding: 40px;
            padding-bottom:25px;
            border-radius: 15px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 400px;
            backdrop-filter:blur(5px);
            -webkit-bacdrop-filter:blur(5px);
        }

        .login-box h2 {
            text-align: center;
            margin-bottom: 30px;
            font-weight: bold;
            color: #343a40;
        }

        .form-control {
            border-radius: 8px;
        }

        .btn-login {
            background-color: #0d6efd;
            border: none;
            border-radius: 8px;
            padding: 10px;
            width: 100%;
            font-weight: bold;
        }

        .btn-login:hover {
            background-color: #0b5ed7;
        }
        
        #addNewLink{
        	text-align:center;
        	font-size:14px;
        	margin-top:10px;
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
	

    <div class="login-box" data-aos="fade-up" data-aos-duration="2000">
        <h2>Vehicle Owner Login</h2>
        <form action="VehicleGoProfileServlet" method="post">
            <div class="mb-3">
                <label class="form-label">Email address</label>
                <input type="email" name="email" class="form-control" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Vehicle ID</label>
                <input type="text" name="vehicleId" class="form-control" required>
            </div>

            <button type="submit" class="btn btn-login">Login</button>
            <h6 id="addNewLink"> <a href="DisplayVehicleServelet">Add new vehicle</a> </h6>
        </form>
    </div>
    
    <!-- AOS Animation -->
	<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
	<script> AOS.init(); </script>

</body>
</html>
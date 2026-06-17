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
    
    <style>
	body {
    	margin: 0;
    	padding: 0;
    	height: 100vh;
    	justify-content: flex-start;
    	background-image: url('images/Driver_BG.jpg');
	    background-size: cover;
	    background-repeat: no-repeat;
	    background-position: center;
	    background-attachment: fixed;
    	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    	flex-direction: column;
    	overflow-x:hidden;
	}
	
	form{
		margin-top: 20px;
	    background-color: rgba(255, 255, 255, 0.5);
	    padding: 30px 40px;
	    border-radius: 20px;
	    box-shadow: 0 8px 30px rgba(0, 0, 255, 0.2);
	    backdrop-filter: blur(12px);
	    -webkit-backdrop-filter: blur(12px);
	    max-width: 420px;
	    width: 100%;
	}
	
	.form-container {
	    display: flex;
	    justify-content: center;
	    align-items: center;
	    height: calc(100vh - 100px); /* adjust 100px if needed to leave space for header */
	}

	table {
    	width:100%;
	}
	 
    h2 {
    	margin-bottom:25px;
    	text-align: center;
    	color:#00008b;
    	font-weight: bold;
    	font-size: 28px;
    	letter-spacing: 1px;
    }

    th,td {
        color: #333;
    }
    
    th {
    	font-size: 18px;
        padding: 10px 5px;
        width: 40%;
        text-align: left;
    }
    
    td{
    	font-size: 16px;
    	padding: 10px 5px;
    	width: 60%;
    }
    
    td.center {
    	text-align: center;
	}

    input[type="text"],
    input[type="password"] {
        padding: 10px;
        width: 100%;
        border: 1px solid #0000ff;
        border-radius: 8px;
        background-color:#f9f9ff;
        height:30px;
    }

    input[type="submit"] {
        background-color: #0000ff;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 10px;
        cursor: pointer;
        text-align: center;
        font-weight: bold;
	    font-size: 16px;
	    margin-top: 10px;
	    transition: all 0.3s ease-in-out;
	    width: 100%;
    }

    input[type="submit"]:hover {
        background-color: #00008b;
        box-shadow: 0 0 20px rgba(0, 0, 255, 0.3);
    	transform: scale(1.03);
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
           	<div class="col"><a href="index.jsp">HOME</a></div>
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
	<!-- End header -->
	
	<!-- -----------------------------Main web page content area - start-------------------------------------------------- -->
<div class="form-container">	
	<form action = "DriverLoginServlet" method = "post">
	<h2>Driver Login</h2>
	<table>
	<tr>
		<th>User Name  </th>
		<td><input type = "text" name = "un" required></td>
	</tr>
	<tr>	
		<th>Password  </th>
		<td><input type = "password" name = "pw" required></td>
	</tr>
	<tr>	
		<td colspan="2" class="center"><input type = "submit" name = "sub" value = "LOG IN"><td>
	</tr>
	<tr>
		<td colspan ="2" class = "registerNew"><h6> If you don't have an account?<a href="DriverRegistration.jsp">Register Now!</a> </h6>
	</tr>
	</table>	
	</form>
</div>	
	
	<!-- -----------------------------Main web page content area - end-------------------------------------------------- -->
	
<!-- bootstrap css -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
	

</body>
</html>
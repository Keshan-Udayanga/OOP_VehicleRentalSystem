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
        min-height: 100vh;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    	background-image: url('images/Driver_BG.jpg');
	    background-size: cover;
	    background-repeat: no-repeat;
	    background-position: center;
	    background-attachment: fixed;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        overflow-x:hidden;
    }

    h2 {
        font-size: 30px;
        color: #00008b;
        margin-top: 20px;
        text-align:center;
        font-weight: 800;
	    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	    text-shadow: 1px 1px 2px rgba(0, 0, 139, 0.3);
	    letter-spacing: 1px;        
    }


	form {
	    width: 80%;
	    max-width: 600px;
	    margin: 40px auto;
	}

	table {
	    background-color: rgba(255, 255, 255, 0.5);
	    border-radius: 15px;
	    padding: 40px 50px;
	    backdrop-filter: blur(10px);
	    -webkit-backdrop-filter: blur(10px);
	    box-shadow: 0 10px 30px rgba(0, 0, 255, 0.2);
	    width: 100%;
	    margin: 0px auto;
	    margin-top: 20px;
	    min-height: 600px; 
	    border-collapse: separate;
    	border-spacing: 8px;
	}

    td {
        font-size: 16px;
        color: #000;
        padding:12px 10px;
        width:60%;
    }

    th {
        padding:12px 10px;
        font-size: 17px;
        text-align: left;
        width: 40%;
    }
    
    	td.center {
    	text-align: center;
	}        

    input[type="text"],
    input[type="email"],
    input[type="date"],
    input[type="password"],
    select {
        padding: 8px;
        width: 100%;
        border: 1px solid #1E90FF;
        border-radius: 8px;
        background-color: #f0f8ff;
    }

    input[type="submit"] {
        margin-top: 20px;
        background-color: #1E90FF;
        color: white;
        padding: 12px 25px;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        font-size: 16px;
        font-weight: bold;
        width: 100%;
        transition: background-color 0.3s ease, transform 0.2s ease;
    }

    input[type="submit"]:hover {
        background-color: #104E8B;
        transform: scale(1.02)
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
	<!-- start header -->
	
	<!-- -----------------------------Main web page content area - start-------------------------------------------------- -->
	<h2>Driver Registration</h2>
	<div class=""form-container">
	<form action = "DriverRegistration" method = "post">
		<table>
			<tr>
				<th>Full Name   </th>
				<td><input type = "text" name = "dName" required></td>
			</tr>
			<tr>
				<th>Phone No  </th>
				<td><input type = "text" name = "phone" required></td>
			</tr>
			<tr>
				<th>Address  </th>
				<td><input type = "text" name = "address" required></td>
			</tr>
			<tr>
				<th>Email  </th>
				<td><input type = "email" name = "email" required></td>
			</tr>
			<tr>
				<th>License No  </th>
				<td><input type = "text" name = "licenseNo" required></td>
			</tr>
			<tr>
				<th>License Expire Date  </th>
				<td><input type = "date" name = "licenseExp" required></td>
			</tr>
			<tr>
				<th>Vehicle Type  </th>
				<td><select name = "vType" required>
					  <option value="Cars">Cars</option>
  					  <option value="Light Trucks">Light Trucks</option>
    				  <option value="Heavy Vehicles">Heavy Vehicles</option>
  					  <option value="Special Vehicles">Special Vehicles</option>
  				</select></td>
			</tr>
			<tr>
				<th>User Name  </th>
				<td><input type = "text" name = "uName" required></td>
			</tr>
			<tr>
				<th>Password  </th>
				<td><input type = "password" name = "pass" required></td>
			</tr>
			<tr><td colspan="2" class="center">
			<input type = "submit" name = "sub" value = "SUBMIT">	
			</td></tr>																								
		</table>
	</form>
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
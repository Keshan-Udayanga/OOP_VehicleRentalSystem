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
        margin: 0;
        padding: 0;
        height: 100vh;
    	background-image: url('images/Driver_BG.jpg');
	    background-size: cover;
	    background-repeat: no-repeat;
	    background-position: center;
	    background-attachment: fixed;
        font-family: Arial, sans-serif;
        display:;
        flex-direction: column;
        align-items: center;
        justify-content: flex-start;
        overflow-x:hidden;
    }

    h2 {
        font-size: 28px;
        color: #00008b;
        margin-top: 15px;
        text-align:center;
        font-weight: bold;
	    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	    text-shadow: 1px 1px 2px rgba(0, 0, 139, 0.5);
	    letter-spacing: 1px;        
    }

    table {
	    background: rgba(255, 255, 255, 0.5);
	    border-radius: 16px;
	    box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
	    backdrop-filter: blur(8px);
	    -webkit-backdrop-filter: blur(8px);
	    border: 1px solid rgba(255, 255, 255, 0.18);
	    margin: 0 auto;
	    padding: 20px;
	    width: 38%;
	    border-collapse: separate;
	    border-spacing: 8px 12px;
	    margin-top: 20px;
	    text-align:center;
    }

    td {
        padding: 10px 15px;
        font-size: 16px;
        color: #000;
        background-color: rgba(255, 255, 255, 0.6);
        border-radius: 30px;
    }
    
    th {
	    text-align: left;
	    padding: 12px 15px;
	    color: #ffffff;
	    background: #1e90ff;
	    font-size: 14px;
	    border-top-left-radius: 10px;
	    border-bottom-left-radius: 10px;
	    width: 40%;
    }
    
   input.update{
        background-color: #228B22;
        color: white;
        font-weight:bold;
        padding: 10px 20px;
		border: 0.5px solid #0000ff;
        border-radius: 10px;
        cursor: pointer;
        font-size: 15px;
        width: 450px;
    }

	input.update:hover {
    	background-color: #32CD32;
    	transform: scale(1.05);
    	box-shadow: 0 0 15px rgba(50, 205, 50, 0.6);
	}

    input.delete{
        background-color: #CD5C5C;
        color: white;
        font-weight:bold;
        padding: 10px 20px;
		border: 0.5px solid #0000ff;
        border-radius: 10px;
        cursor: pointer;
        font-size: 15px;
        width: 450px;
    }

 	input.delete:hover {
    	background-color: #FF6347;
    	transform: scale(1.05);
    	box-shadow: 0 0 15px rgba(220, 20, 60, 0.6);
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
	<!-- End header -->
	
	<!-- -----------------------------Main web page content area - start-------------------------------------------------- -->
	
	<h2>Your Details</h2>
	<table>
	<c:forEach var = "driver" items ="${driverDetails}">
		
		<c:set var = "id" value = "${driver.getPID()}"/>
		<c:set var = "dname" value = "${driver.dName}"/>
		<c:set var = "phone" value = "${driver.phone}"/>
		<c:set var = "address" value = "${driver.address}"/>
		<c:set var = "email" value = "${driver.email}"/>
		<c:set var = "lNo" value = "${driver.licenseNo}"/>
		<c:set var = "lExp" value = "${driver.licenseExp}"/>
		<c:set var = "vtype" value = "${driver.vType}"/>
		<c:set var = "uname" value = "${driver.uName}"/>
		
		<tr>
			<th>Driver ID</th>
			<td>${driver.getPID()}</td>
		</tr>
		<tr>
			<th>Full Name</th>
			<td>${driver.dName}</td>
		</tr>
		<tr>
			<th>Mobile Number</th>
			<td>${driver.phone}</td>
		</tr>
		<tr>
			<th>Address</th>
			<td>${driver.address}</td>
		</tr>
		<tr>
			<th>Email</th>
			<td>${driver.email}</td>
		</tr>
		<tr>
			<th>License No</th>
			<td>${driver.licenseNo}</td>
		</tr>
		<tr>
			<th>License Expire Date  </th>
			<td>${driver.licenseExp}</td>
		</tr>
		<tr>
			<th>Vehicle Type</th>
			<td>${driver.vType}</td>
		</tr>
		<tr>
			<th>User Name</th>
			<td>${driver.uName}</td>
		</tr>																	
		
	</c:forEach>
	</table>
	
	<c:url value = "DriverUpdateAccount.jsp" var = "dUpdate">
		
		<c:param name = "id" value = "${id}"/>
		<c:param name = "dname" value = "${dname}"/>
		<c:param name = "phone" value = "${phone}"/>
		<c:param name = "address" value = "${address}"/>
		<c:param name = "email" value = "${email}"/>
		<c:param name = "lNo" value = "${lNo}"/>
		<c:param name = "lExp" value = "${lExp}"/>
		<c:param name = "vtype" value = "${vtype}"/>
		<c:param name = "uname" value = "${uname}"/>
	</c:url>
	
	<div style="display: flex; flex-direction: column; align-items: center; margin-top: 20px;">
	<a href = "${dUpdate}">
	<input type = "button" class = "update" name = "update" value = "Update Account">
	</a>
	</div>
	
	<c:url value = "DriverDeleteAccount.jsp" var = "dDelete">
		
		<c:param name = "id" value = "${id}"/>
		<c:param name = "dname" value = "${dname}"/>
		<c:param name = "phone" value = "${phone}"/>
		<c:param name = "address" value = "${address}"/>
		<c:param name = "email" value = "${email}"/>
		<c:param name = "lNo" value = "${lNo}"/>
		<c:param name = "lExp" value = "${lExp}"/>
		<c:param name = "vtype" value = "${vtype}"/>
		<c:param name = "uname" value = "${uname}"/>
	</c:url>
	
	<div style="display: flex; flex-direction: column; align-items: center; margin-top:10px;">
	<a href = "${dDelete}">
	<input type = "button" class = "delete" name = "delete" value = "Delete Account">	
	</a>
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
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
        display:;
        justify-content: center;
        align-items: center;
    	background-image: url('images/Driver_BG.jpg');
	    background-size: cover;
	    background-repeat: no-repeat;
	    background-position: center;
	    background-attachment: fixed;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        overflow-x:hidden;
        
    }

    h2 {
        text-align: center;
        color: #006400  ;
        font-size: 30px;
        margin-bottom: 25px;
        font-weight: 800;
        letter-spacing: 1px;
    }

    form {
        background-color: rgba(255, 255, 255, 0.5);
        padding: 30px 40px;
        border-radius: 20px;
        box-shadow: 0 0 25px rgba(0, 255, 0, 0.4);
        backdrop-filter: blur(12px);
        -webkit-backdrop-filter: blur(12px);
        max-width: 600px;
    	margin: 30px auto;
    	width: 90%;
    }

    table {
        border-spacing: 10px;
        border-collapse:separate;
        width: 100%;
    }

    td {
        font-size: 16px;
        font-weight: 500;
        color: #002f5f;
    }
    
    td.center{
    	text-align: center;
    }
    
    th {
        font-size: 17px;
        text-align: left;
        color: #003366;
   		padding-bottom: 5px;
    	vertical-align: center;
    	font-weight: 800;
    }

    input[type="text"],
    input[type="email"],
    input[type="date"],
    select {
        padding: 8px;
        width: 100%;
        border: 1px solid #00BFFF;
        border-radius: 8px;
        font-size: 14px;
        box-sizing: border-box;
    	transition: border 0.3s, box-shadow 0.3s;
    }
   

    input[type="submit"] {
        background-color: #228B22;
        color: white;
        padding: 12px 28px;
        border: none;
        border-radius: 25px;
        cursor: pointer;
        font-size: 16px;
        font-weight: bold;
        margin-top: 20px;
        transition: all 0.3s ease;
        width: 50%;
    }

    input[type="submit"]:hover {
        background-color: #32CD32;
        box-shadow: 0 0 10px rgba(50, 205, 50, 0.5);
        transform: scale(1.05);
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
       	 <h3 id="loginBtn"><a href="./UserProfileServlet"><i class="bi bi-person-circle">Profile</i></a></h3>
   	</div>
    </div>
	<!-- End header -->
	
	<!-- -----------------------------Main web page content area - start-------------------------------------------------- -->
	

	<%
		String id = request.getParameter("id");
		String dName = request.getParameter("dname");
		String phoneNo = request.getParameter("phone");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String licenNo = request.getParameter("lNo");
		String licenExp = request.getParameter("lExp");
		String vType = request.getParameter("vtype");
		String uName = request.getParameter("uname");
	%>
	<form action = "DriverUpdateServlet" method = "post">
	
	<h2>Edit Profile</h2>
		<table>
			<tr>
				<th>Driver ID   </th>
				<td><input type = "text" name = "dId" value = "<%=id%>" readonly></td>
			</tr>
			<tr>
				<th>Full Name   </th>
				<td><input type = "text" name = "dName" value = "<%=dName%>"></td>
			</tr>
			<tr>
				<th>Phone No  </th>
				<td><input type = "text" name = "phone" value = "<%=phoneNo%>"></td>
			</tr>
			<tr>
				<th>Address  </th>
				<td><input type = "text" name = "address" value = "<%=address%>"></td>
			</tr>
			<tr>
				<th>Email  </th>
				<td><input type = "email" name = "email" value = "<%=email%>"></td>
			</tr>
			<tr>
				<th>License No  </th>
				<td><input type = "text" name = "licenseNo" value = "<%=licenNo%>"></td>
			</tr>
			<tr>
				<th>License Expire Date  </th>
				<td><input type = "date" name = "licenseExp" value = "<%=licenExp%>"></td>
			</tr>
			<tr>
				<th>Vehicle Type  </th>
				<td><select name = "vType">
					  <option value="<%=vType%>"><%=vType%></option>
					  <option value="Cars">Cars</option>
  					  <option value="Light Trucks">Light Trucks</option>
    				  <option value="Heavy Vehicles">Heavy Vehicles</option>
  					  <option value="Special Vehicles">Special Vehicles</option>
  				</select></td>
			</tr>
			<tr>
				<th>User Name  </th>
				<td><input type = "text" name = "uName" value = "<%=uName%>"></td>
			</tr>
			<tr><td colspan="2" class="center">
			<input type = "submit" name = "sub" value = "Edit Your Profile">	
			</td></tr>																								
		</table>
	</form>	
	  
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
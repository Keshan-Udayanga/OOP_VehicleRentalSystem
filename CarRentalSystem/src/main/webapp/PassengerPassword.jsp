<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Password</title>
<link rel="stylesheet" type="text/css" href="CSS/PassengerStyles/PassengerPassword.css">
</head>
<body>

<div class="formMain">
	<div class="PsignForm">
		<h2 class="ph2">Create Password</h2>
		<form action="PassengerPassServlet" method="post">
		  <label>Enter Password:<input type="password" name="pass1" class="textfields" placeholder="Enter password" required></label><br>
		 <label>Re-Enter-Password:<input type="password" name="pass2" class="textfields" placeholder="Re-Enter password" required></label><br>
		 
		 <input type="submit" class="btn" name="passbtn" value="Create"> 
		 </form>
	 </div>
	 <div class="Pdescription">
		<h2>Create a </h2>
		<h2>Strong Password </h2>
		<p>A strong password protects your personal data and prevents unauthorized access to the system</p>
	 </div>
</div>
</body>
</html>
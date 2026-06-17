<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Us</title>
<link href="./CSS/headerAndFooterCss.css" rel="stylesheet" type="text/css">
	<!-- font awesome icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <!-- bootstrap icons link -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <!-- bootstrap css -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

<style>
    body {

        font-family: Arial, sans-serif;
        margin: 0;
        overflow-x: hidden;
    }
    
    .container {
	    max-width: 90%;
	    margin: 0 auto;
	    padding: 0 20px;
	}
	
	.description {
	    max-width: 80%;
	    margin: 0 auto 30px auto;
	    padding: 10px 20px;
	    font-size: 18px;
	    line-height: 1.7;
	    color: #444;
	    text-align: center;
	    background-color: rgba(255, 255, 255, 0.4);
	    border-radius: 12px;
	    backdrop-filter: blur(6px);
	    -webkit-backdrop-filter: blur(6px);
	    box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
	}

    h2 {
        text-align: center;
        color: #0d6efd;
        margin-bottom: 20px;
        margin-top: 20px;
        font-size:42px;
        font-weight: 800;
        letter-spacing:1.5px;
        text-transform: uppercase;
        text-shadow: 1px 1px 4px rgba(0, 0, 139, 0.2);
    }

    .row1 {
        display: flex;
        flex-wrap: wrap;
        gap: 30px;
        margin-left: 20px;
        margin-top: 40px;
        padding: 20px;
    }

    .coll {
        flex: 1;
        min-width: 300px;
        margin-right: 20px;
        margin-top: 30px;
    }

    .contact-info p {
        margin: 0 14px 10px;
        color: #333;
        font-weight: 700;
        line-height:1.8;
        margin-top:22px;
    }

    .contact-info a i {
        font-size: 20px;
        margin-right: 15px;
        color: #0d6efd;
        transition: 0.3s;
        text-decoration: none;
    }

    .contact-info a i:hover {
        color: #084298;
    }

    form input,
    form textarea {
    	
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 8px;
        font-size: 15px;
        box-shadow: 0 8px 30px rgba(0, 0, 255, 0.2);
       	background-color: rgba(255, 255, 255, 0.5);
	    backdrop-filter: blur(10px);
	    -webkit-backdrop-filter: blur(10px);
	    color: #000;
    }

    form button {
        width: 100%;
        padding: 12px;
        background-color: #0d6efd;
        color: white;
        border: none;
        border-radius: 8px;
        font-size: 16px;
        cursor: pointer;
        transition: 0.3s;
    }

    form button:hover {
        background-color: #084298;
    }

    iframe {
        width: 100%;
        height: 300px;
        border: none;
        margin-top: 30px;
        border-radius: 10px;
    }
    
    .company{
    	color:#0d6efd;
    	font-size: 20px;
    	font-weight:600;
    }
    
    #main{
    	margin-top:60px;
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
           	<div class="col"><a href="./LoggedIndexndex.jsp">HOME</a></div>
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
	<!-- End header -->
	
	<!-- -----------------------------Main web page content area - start-------------------------------------------------- -->
<div class="container" id="main">
    <h2>CONTACT US</h2>
    
    <p class="description">
	     At <strong class="company">4-Rent (Pvt) Ltd</strong>, your satisfaction is our priority.<br>
	     Whether you have questions about our vehicles, services, or booking process — our team is ready to assist you.<br><br>
	     Contact us through the information on the left, and we’ll respond as quickly as possible.<br>
	     Let us help you hit the road with confidence!
     </p>
    
    <div class="row">
        <!-- Contact Info -->
        <div class="col contact-info">
			<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,
			 and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
        </div>

        <!-- Contact Form -->
        <div class="col">
            <form action="contactHandler" method="post">
                <input type="text" name="name" placeholder="Your Name" required>
                <input type="email" name="email" placeholder="Your Email" required>
                <input type="text" name="subject" placeholder="Subject" required>
                <textarea name="message" placeholder="Your Message" rows="5" required></textarea>
                <button type="submit">Send Message</button>
            </form>
        </div>
    </div>

    <!-- Google Map -->
    <iframe src="https://www.google.com/maps?q=Piliyandala,Sri%20Lanka&output=embed"></iframe>
</div>

</body>
</html>
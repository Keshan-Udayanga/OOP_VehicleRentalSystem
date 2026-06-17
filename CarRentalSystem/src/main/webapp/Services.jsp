<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
    
<!DOCTYPE html>
<html lang="en">
<head>
	  <meta charset="UTF-8" />
	  <meta name="viewport" content="width=device-width, initial-scale=1" />
	  <title>Our Services - Car Rental</title>
	  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
	  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
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
      font-family: 'Segoe UI', sans-serif;
      background-color: #f8f9fa;
      margin: 0;
      padding: 0;
      overflow-x:hidden;
    }

    .services-header {
      background-color: #007bff;
      color: white;
      padding: 60px 0;
      text-align: center;
    }

    .services-header h2 {
      font-size: 42px;
      font-weight: bold;
    }

    .services-header p {
      font-size: 18px;
      color: #dcdcdc;
    }

    .services-section {
      padding: 60px 0;
    }

    .service-card {
      background: #d3e9ff;
      border: none;
      border-radius: 12px;
      padding: 30px;
      margin-bottom: 30px;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.05);
      transition: all 0.3s ease-in-out;
      height: 100%;
    }

    .service-card:hover {
      transform: translateY(-5px);
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.08);
    }

    .service-icon {
      font-size: 40px;
      color: #007bff;
      margin-bottom: 20px;
    }

    .service-card h4 {
      font-weight: 600;
      margin-bottom: 10px;
    }

    .service-card p {
      color: #555;
      font-size: 15px;
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

  <!-- Header -->
  <div class="services-header">
    <h2>Our Car Rental Services</h2>
    <p>Explore a wide range of flexible and reliable rental options for every journey.</p>
  </div>

  <!-- Services -->
  <div class="container services-section">
    <div class="row">
      <!-- Service 1 -->
      <div class="col-md-4">
        <div class="service-card text-center">
          <div class="service-icon"><i class="fas fa-car"></i></div>
          <h4>Self-Drive Rentals</h4>
          <p>Freedom to drive yourself anywhere at your own convenience with well-maintained vehicles.</p>
        </div>
      </div>
      <!-- Service 2 -->
      <div class="col-md-4">
        <div class="service-card text-center">
          <div class="service-icon"><i class="fas fa-user-tie"></i></div>
          <h4>Chauffeur Service</h4>
          <p>Enjoy your ride with a professional driver for luxury and safety.</p>
        </div>
      </div>
      <!-- Service 3 -->
      <div class="col-md-4">
        <div class="service-card text-center">
          <div class="service-icon"><i class="fas fa-clock"></i></div>
          <h4>Hourly Rentals</h4>
          <p>Rent vehicles by the hour — ideal for quick trips or meetings in the city.</p>
        </div>
      </div>
    </div>

    <div class="row" style="margin-top:50px;">
      <!-- Service 4 -->
      <div class="col-md-4">
        <div class="service-card text-center">
          <div class="service-icon"><i class="fas fa-calendar-alt"></i></div>
          <h4>Monthly Rentals</h4>
          <p>Affordable long-term rental options for travelers, expats, and businesses.</p>
        </div>
      </div>
      <!-- Service 5 -->
      <div class="col-md-4">
        <div class="service-card text-center">
          <div class="service-icon"><i class="fas fa-plane-departure"></i></div>
          <h4>Airport Transfers</h4>
          <p>On-time pickup and drop services to and from all major airports with comfort.</p>
        </div>
      </div>
      <!-- Service 6 -->
      <div class="col-md-4">
        <div class="service-card text-center">
          <div class="service-icon"><i class="fas fa-globe"></i></div>
          <h4>Tour Packages</h4>
          <p>Custom travel plans with vehicles and guides to make your trip memorable.</p>
        </div>
      </div>
    </div>
  </div>
  
  <!-- Intro Paragraph Section -->
<div class="container my-5">
  <div class="row">
    <div class="col-lg-10 mx-auto text-center">
      <h3>Why Choose Us?</h3>
      <p class="lead mt-3">
        We are committed to providing top-notch car rental services that combine convenience, comfort, and affordability. 
        Whether you're traveling for business, leisure, or need a long-term rental, our fleet is ready to serve your needs 
        with reliability and style. Join thousands of satisfied customers who trust us for their travel needs.
      </p>
    </div>
  </div>
</div>

<!-- Image Banner Section -->
<div class="container mb-5">
  <div class="row">
    <div class="col-md-6">
      <img src="./images/succesfullyVehicleRegistered.jpg" alt="Our Fleet" class="img-fluid rounded shadow" />
    </div>
    <div class="col-md-6">
      <img src="./images/succesfullyVehicleRegistered.jpg" alt="Our Fleet" class="img-fluid rounded shadow" />
    </div>
  </div>
</div>
  

  <!-- Scripts -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>

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
    
</head>
<body>

	<div id="header" class="row">
            <div class="col-3">
                <!-- add logo here  -->
                <img src="./images/logo.png" alt="logo" width="110%">
            </div>
            <div class="col-6">
                <!-- navigation -->
                <div id="navBar" class="row container">
                    <div class="col"><a href="LoggedIndex.jsp">HOME</a></div>
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

        <div id="corausel">
            <div id="carouselIndicators" class="carousel slide">
                <div class="carousel-indicators">
                  <button type="button" data-bs-target="#carouselIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                  <button type="button" data-bs-target="#carouselIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                </div>
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img src="./images/carousel1.jpg" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="./images/carousel2.jpg" class="d-block w-100" alt="...">
                  </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselIndicators" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselIndicators" data-bs-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Next</span>
                </button>
              </div>
        </div>

        <!-- start main content in home page -->
        <div class="container-fluid">
            <!-- wedding car display area -->
             <div id="serviceHome" class="container">

                <h3 class="topic"><span>Our</span> Services</h3> <hr>

                <div class="row">
                    <div class="col-md">
                        <div class="content">
                            <img src="./images/wedding.jpg" alt="" width="100%">
                            <h4>Start Your Forever in Style</h4>
                        </div>
                    </div>
                    <div class="col-md">
                        <div class="content">
                            <img src="./images/trip.jpg" alt="" width="100%">
                            <h4>Drive Your Adventure</h4>
                        </div>
                    </div>
                    <div class="col-md">
                        <div class="content">
                            <img src="./images/ride.jpg" alt="" width="100%">
                            <h4>Ride Your Way,Anytime</h4>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col"></div>
                    <div class="col"><button type="button" class="btn center" >VIEW MORE<i class="bi bi-arrow-right-circle-fill"></i></button></div>
                    <div class="col"></div>                    
                </div>

             </div>

            <!-- Show vehicle sets -->
            <div id="showVehicleList" class="row">
                <div class="row" id="bg">
                    <h1>RENT A VEHICLE</h1>
                </div>
                <div class="row" id="vehicleImg">
                    <div class="col-md">
                        <div>
                            <img src="./images/homeV1.jpg" alt="" width="100%">
                            <div class="row">
                                <div class="col"></div>
                                <div class="col"></div>
                                <div class="col"></div>
                                <div class="col"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md">
                        <div>
                            <img src="./images/homeV2.jpg" alt="" width="100%">
                        </div>
                    </div>
                    <div class="col-md">
                        <div>
                            <img src="./images/homeV3.jpg" alt="" width="100%">
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!-- end main content in home page -->

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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Car Rental Ratings & Reviews</title>
  <link href="./CSS/headerAndFooterCss.css" rel="stylesheet" type="text/css">
	<!-- font awesome icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <!-- bootstrap icons link -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <!-- bootstrap css -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
   
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="styles.css">
</head>
	<style>
		body {
		  font-family: 'Segoe UI', sans-serif;
		  overflow-x:hidden;
		}
		
		h2, h3, h4 {
		  font-weight: bold;
		}
		
		form {
		  max-width: 600px;
		  margin: 0 auto;
		}
		
		label {
		  font-weight: 600;
		}
		.box{
			margin:5px;
			padding:20px;
			background-color: rgba(221, 221, 221, 0.1);
            border-radius: 15px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
		}
		#FormArea{
			background-color: rgba(221, 221, 221, 0.1);
			border-radius:10px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            margin-top:70px;
            padding:15px;
		}				
	</style>
<body>

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
                 <h3 id="loginBtn"><a href="./UserProfileServlet"><i class="bi bi-person-circle">Profile</i></a></h3>
            </div>
        </div>

  <!-- Header Section -->
  <section class="bg-info text-white py-5">
    <div class="container text-center">
      <h2 class="font-weight-bold">Ratings & Reviews</h2>
      <p>Collect more and better Ratings & Reviews. Display for maximum conversion impact. Back-end collection and display analytics enable the best programs possible.</p>
      <div class="container">
      	<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
      	Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
      	when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
      	It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. 
      	It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, 
      	and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>
      </div>
    </div>
  </section>

  <!-- Stats Section -->
  <section class="py-5">
    <div class="container text-center">
      <h4><strong>Ratings & Reviews turn browsers into buyers.</strong> We help you capture more content and convert more shoppers.</h4>
      <div class="row mt-5">
        <div class="col box">
          <h2 class="text-success">108.3%</h2>
          <p>conversion lift for consumers who interact with Ratings & Reviews vs. those who don't.</p>
          <small class="text-success">Source: Conversion Impact of UGC</small>
        </div>
        <div class="col box">
          <h2 class="text-success">296.2%</h2>
          <p>conversion lift when shoppers are exposed to products with 5,000+ reviews vs. 0 reviews.</p>
          <small class="text-success">Source: The Power of Review Volume</small>
        </div>
        <div class="col box">
          <h2 class="text-success">97%</h2>
          <p>of shoppers actively seek out longer, more detailed reviews.</p>
          <small class="text-success">Source: Beyond the Basics</small>
        </div>
        <div class="col box">
          <h2 class="text-success">94%</h2>
          <p>of shoppers seek out visual content within reviews.</p>
          <small class="text-success">Source: Beyond the Basics</small>
        </div>
      </div>
    </div>
  </section>

  <!-- Collect Content Section -->
  <section class="py-5 bg-light">
    <div class="container">
      <h5 class="text-primary text-muted">Collect</h5>
      <h3 class="text-info font-weight-bold">Collect More & Better Content</h3>
      <p>Pair critical performance data with the flexible and varied collection techniques you need to build a conversion-focused UGC collection strategy.</p>

      <ul class="">
        <li><strong>CUSTOMIZE THE TYPE OF INFORMATION YOU COLLECT</strong></li>
        <li><strong>INTELLIGENT COLLECTION</strong></li>
        <li><strong>SIMPLE, ONE-STEP FORM FOR MULTIPLE REVIEWS</strong></li>
        <li><strong>MOBILE FIRST DESIGN</strong></li>
        <li><strong>CONTINUAL DATA-DRIVEN OPTIMIZATION</strong></li>
      </ul>


      <!-- Rating Submission Form -->
      <div id="FormArea">
      <div class="bg-white p-4 rounded shadow-sm">
        <h4 class="text-success text-center mb-4">Submit Your Car Rental Review</h4>
        <form id="reviewForm">
          <div class="form-group">
            <label for="name">Your Name</label>
            <input type="text" class="form-control" id="name" placeholder="John Doe" required>
          </div>
          <div class="form-group">
            <label for="car">Rented Car</label>
            <input type="text" class="form-control" id="car" placeholder="e.g., Honda Civic 2022" required>
          </div>
          <div class="form-group">
            <label for="rating">Rating</label>
            <select class="form-control" id="rating" required>
              <option value="">Select a rating</option>
              <option value="5">⭐️⭐️⭐️⭐️⭐️ - Excellent</option>
              <option value="4">⭐️⭐️⭐️⭐️ - Very Good</option>
              <option value="3">⭐️⭐️⭐️ - Good</option>
              <option value="2">⭐️⭐️ - Fair</option>
              <option value="1">⭐️ - Poor</option>
            </select>
          </div>
          <div class="form-group">
            <label for="review">Your Review</label>
            <textarea class="form-control" id="review" rows="4" placeholder="Share your experience..." required></textarea>
          </div>
          <div class="text-center">
            <button type="submit" class="btn btn-success px-4">Submit Review</button>
          </div>
        </form>
      </div>
    </div>
    </div>
    
    
  </section>
  
  
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
        <!-- end footer -->

</body>
</html>

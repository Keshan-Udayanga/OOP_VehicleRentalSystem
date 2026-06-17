<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   
    <meta charset="UTF-8">
    <title>Dashboard</title>
    
    <!-- font awesome icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <!-- bootstrap icons link -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <!-- bootstrap css -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
   
   
     <style>
        body {
            background-color: #f4f6f9;
        }
        .sidebar {
            height: 100vh;
            background-color: #343a40;
            color: white;
        }
        .sidebar a {
            color: white;
            text-decoration: none;
            display: block;
            padding: 10px 15px;
        }
        .sidebar a:hover {
            background-color: #495057;
        }
        .card-box {
            color: white;
            padding: 20px;
            border-radius: 8px;
        }
        .card-blue { background-color: #007bff; }
        .card-green { background-color: #28a745; }
        .card-red { background-color: #dc3545; }
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <!-- Sidebar -->
        <div class="col-md-2 sidebar">
            <h4 class="mt-4 ps-3">Dashboard</h4>
            <a href="#">Dashboard</a>
            <a href="#">Drivers</a>
            <a href="#">Vehicle Owners</a>
            <a href="#">Passengers</a>
            <a href="#">Bookings</a>
            <a href="#">Feedbacks</a>
            <a href="#">F & Q</a>
            <a href="#">Settings</a>
            <a href="./index.jsp">Sign Out</a>
        </div>

        <!-- Main Content start -->
        <div class="col-md-10 p-4">
        
        
            <div class="row mb-4">
                <div class="col-md-4">
                    <div class="card-box card-blue">
                        <h5>Sign Ups</h5>
                        <h2>114</h2>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card-box card-green">
                        <h5>Revenue</h5>
                        <h2>$25,541</h2>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card-box card-red">
                        <h5>Open Tickets</h5>
                        <h2>5</h2>
                    </div>
                </div>
            </div>        
            
            
        </div>
        <!-- Main Content end -->
        
        
        
    </div>
</div>

<!-- Bootstrap JS (optional) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
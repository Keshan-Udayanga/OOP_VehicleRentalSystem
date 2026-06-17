<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin-Login</title>

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
            background-image: url('../images/adminLoginBg.jpg'); /* Replace with your image path */
			background-size: cover;
			background-repeat: no-repeat;
			background-position: center;
			background-attachment: fixed; /* Optional: makes it stay in place when scrolling */
			font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
			overflow-x:hidden;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .login-box {
            background: rgba(255, 255, 255, 0.3);
            padding: 40px;
            padding-bottom:25px;
            border-radius: 15px;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 400px;
            backdrop-filter:blur(5px);
            -webkit-bacdrop-filter:blur(5px);
        }

        .login-box h2 {
            text-align: center;
            margin-bottom: 30px;
            font-weight: bold;
            color: #343a40;
        }

        .form-control {
            border-radius: 8px;
        }

        .btn-login {
            background-color: #0d6efd;
            border: none;
            border-radius: 8px;
            padding: 10px;
            width: 100%;
            font-weight: bold;
        }

        .btn-login:hover {
            background-color: #0b5ed7;
        }
        
        #addNewLink{
        	text-align:center;
        	font-size:14px;
        	margin-top:10px;
        }
        
    </style>
</head>
<body>

	<div class="login-box">
        <h2>Admin-Login</h2>
        <form action="../Admin_LoginServlet" method="post">
            <div class="mb-3">
                <input type="text" name="userName" class="form-control" placeholder="Enter User Name" required>
            </div>

            <div class="mb-3">
                <input type="password" name="pwd" class="form-control" placeholder="Enter Password" required>
            </div>

            <button type="submit" class="btn btn-login btn-sm">Login</button>
        </form>
    </div>

</body>
</html>
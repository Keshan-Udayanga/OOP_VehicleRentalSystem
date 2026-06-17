<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
       body {
            margin: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #f0f0f0;
            
        }
        .box {
            width: 500px;
            height: 250px;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        button {
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border: none;
            border-radius: 5px;
            background-color: #4CAF50;
            color: white;
            transition: background-color 0.3s;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
	<c:forEach var="vehiId" items="${vehicleid}">
	
		<div class="box">
	        <div class="row">
	        	<h4>${vehiId[1]}</h4>
	        	<h5>Your Vehicle ID</h5>
	        	<div class="col">
	        		<h2>${vehiId[0]}</h2>
	        	</div>
	        </div>
	
	        
	        <a href="index.jsp"> <button>Thank You</button> </a>
	    </div>
	    
	   

     </c:forEach> 
</body>
</html>





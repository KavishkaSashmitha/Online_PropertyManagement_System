<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search</title>
<link href="CSS/style.css" rel="stylesheet" type="text/CSS"/>
    <link href="CSS/header.css" rel="stylesheet" type="text/CSS"/>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Arimo&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@500&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Koulen&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <script src="https://kit.fontawesome.com/42ad09fc8e.js"></script>
    <style>
    body{
    	background:url("images/2083099.jpg");
    	background-repeat: no-repeat;
  		
    	
    }
<style>

 	*{
 		margin :0px;
 		padding:0;
 		
 	}
        body {
        	
            font-family: Arial, sans-serif;
            font-color:white;
        }

        .form-container {
        	
            width: 300px;
            margin: 0 auto auto auto;
        }

        .form-group {
            margin-bottom: 20px;
            margin-top:20px;
        }

        label {
            display: block;
            color:white;
            font-weight: bold;
        }

        select, input[type="date"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .btn {
            background-color: #007BFF;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="header">
        <div class="header_content">
            <div class="logo">
                <a href="Home.jsp">
                    <img src="images/logo.png" height="90px" width="135px">
                </a>
            </div>
            <div class="navigation">
                <ul>
                    <li>
                        <a href="#">
                            <span class="title">Home</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="title">Maintanance</span>
                        </a>
                    </li>
                    <li>
                        <a href="search.jsp">
                            <span class="title">Property</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="title">payments</span>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="buttons">
                <i class="bi bi-person-circle" onclick="profiledropdown()"></i>
                <div class="profile-dropdown">
                    <a href="#">
                        <input type="button" value="Log In">
                    </a>
                    <a href="#">
                        <input type="button" value="Sign Up">
                    </a>
                </div>
            </div>
        </div>
    </div>
<div class="form-container">
    <form action="search" method="post">
        <div class="form-group">
            <label for="location">Location:</label>
            <select id="location" name="location">
                <option value="COLOMBO">COLOMBO</option>
                <option value="GAMPAHA">GAMPAHA</option>
                <option value="MATHARA">MATHARA</option>
                <!-- Add more location options here -->
            </select>
        </div>

        <div class="form-group">
            <label for="date">Date:</label>
            <input type="date" id="date" name="date">
        </div>

        <div class="form-group">
            <label for="property">Property Selector:</label>
            <select id="property" name="property_type">
                <option value="apartment">Apartment</option>
                <option value="house">House</option>
                <option value="condo">Condo</option>
                <!-- Add more property options here -->
            </select>
        </div>

        <button type="submit" class="btn">SEARCH</button>
        <a href="viewbookinglog.jsp"><button type="button" class="btn">View Booking</button></a>
    </form>
</div>
<footer>
        <div class="footer-left">
            <div class="footer-col">
                <ul>
                    <li><a href="#">Coordinators</a></li>
                    <li><a href="#">Privacy Policy</a></li>
                    <li><a href="#">Terms of Service</a></li>
                </ul>
            </div>
            <div class="footer-col">
                <ul>
                    <li><a href="#">Support</a></li>
                    <li><a href="#">Contact Us</a></li>
                    <li><a href="#">About Us</a></li>
                </ul>
            </div>
        </div>
        <div class="footer-middle">
            <div id="logo">
                <img src="images/logo.png" height="70px" width="125px">
                <p class="copyright">&copy; Copyright OnlineProperty 2023. All Right Reserved.</p>
            </div>
        </div>
        <div class="footer-right">
            <div class="app-links">
                <a href="#" class="appstore">App Store</a>
                <a href="#" class="playstore">Play Store</a>
            </div>
            <div class="social-media">
                <a href="#" class="social-buttons"><i class="fa-brands fa-facebook-f"></i></a>
                <a href="#" class="social-buttons"><i class="fa-brands fa-twitter"></i></a>
                <a href="#" class="social-buttons"><i class="fa-brands fa-instagram"></i></a>
                <a href="#" class="social-buttons"><i class="fa-brands fa-youtube"></i></a>
            </div>
        </div>
    </footer>

</body>
</html>
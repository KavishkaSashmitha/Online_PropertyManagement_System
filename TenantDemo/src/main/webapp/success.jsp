<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	
	<title>OnlineProperty - success</title>
	<link href="CSS/Style.css" rel="stylesheet" type="text/CSS"/>
    <link href="CSS/Header.css" rel="stylesheet" type="text/CSS"/>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Arimo&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@500&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Koulen&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <script src="https://kit.fontawesome.com/42ad09fc8e.js"></script>

<style>
body {
background-color: black;
background-image: url(../images/background.jpg);
 
}
.btn {
  margin: 0;
  position: absolute;
  top: 30%;
  left: 50%;
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
  
  background-color: red;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

h1 {text-align: center;
color:white;
}



</style>


</head>
<body>
	
	<!-- Header-->
    <div class="header">
        <div class="header_content">
            <div class="logo">
                <a href="index.html">
                    <img src="images/logo.jpg" height="90px" width="135px">
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
                            <span class="title">Shop</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
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
    <!-- Header End-->
	
<h1>You are Successfully Registered to the Property Management System</h1>

<a href="TenantLogin.jsp"><button type="button" class="btn">Login Here</button></a>

	<!-- Footer -->
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
                <img src="images/logoblack.jpg" height="70px" width="125px">
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
    <!-- Footer End -->
    <script src="js/javascript.js"></script>

</body>
</html>
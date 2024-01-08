<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>OnlineProperty - Tenant Register</title>
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







</head>
<body>


<!-- Header-->
    <div class="header">
        <div class="header_content">
            <div class="logo">
                <a href="TenantLogin.jsp">
                    <img src="images/logo.jpg" height="90px" width="135px">
                </a>
            </div>
            <div class="navigation">
                <ul>
                    <li>
                        <a href="Home.jsp">
                            <span class="title">Home</span>
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
                     <li>
                        <a href="TenantLogin.jsp">
                            <span class="title">Login</span>
                        </a>
                        </li>
                    
                </ul>
            </div>
            <div class="buttons">
                <i class="bi bi-person-circle" onclick="profiledropdown()"></i>
                <div class="profile-dropdown">
                    <a href="TenantLogin.jsp">
                        <input type="button" value="Log In">
                    </a>
                    <a href="TenantLogin.jsp">
                        <input type="button" value="Sign Up">
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!-- Header End-->




<div class="homepagemain">
        <div class="slider-image bg-4">
            
            <div class="container-reg">
                <div class="grid">
				<form class="form fields" action="insert"method="post">
					<h4> New Tenant Register</h4>
					
					<input class="input" type="text" name="name" placeholder=" Tenant Name" required><br>
					
					
					<input class="input" type="email" name="email" placeholder="Tenant Email" required><br>
					<input class="input" type="tel" name="phone" maxlength="10" placeholder="Phone Number" required><br>
				
					<input class="input" type="text" name="uid" placeholder="Username" required><br>
					<input class="input" type="password" name="psw" placeholder="Password" required><br>
					
					<input type="submit" name="submit" value="Register new Tenant">
					
					<a href="TenantLogin.jsp">
					<input type="button" name="submit" value="Already Have An Account,LOGIN HERE">
					</a>
                    
				</form>
				</div>
			</div>
	</div>
</div>



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
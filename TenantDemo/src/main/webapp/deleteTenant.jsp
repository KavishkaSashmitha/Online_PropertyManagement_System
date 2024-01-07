<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>OnlineProperty - tenant delete</title>
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
background-color: white;
background-repeat: no-repeat;
  background-size: 500px 100px;
background-image: url(../images/background.jpg);
}

h1 {text-align: center;
margin-top:20px;
}
#tenant {
   font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 70%;
  margin-left: auto;
  margin-right: auto;
   margin-bottom: 100px;
    margin-top: 30px;
}

#tenant td, #tenant th {
  border: 1px solid #ddd;
  padding: 15px;
}

#tenant tr:nth-child(odd){background-color:#ededd3;}

#tenant tr:hover {background-color: coral;}

#tenant th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}

.btn {
  margin: 0;
  position: absolute;
  top: 65%;
  left: 50%;
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
  background-color: Black;
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
</style>




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

<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String phone = request.getParameter("phone");
String email = request.getParameter("email");
String username = request.getParameter("username");
String password = request.getParameter("password");


%>
<h1> Delete Tenant Account</h1>

<form action="delete" method="post">

<table id="tenant">


<tr>
<td>Tenant Id</td>
<td><input type="text" name="cusid" value="<%= id %>" readonly></td>

</tr>

<tr>
<td>Tenant Name</td>
<td><input type="text" name="name" value="<%= name %>"readonly></td>

</tr>

<tr>
<td>Tenant Phone</td>
<td><input type="text" name="phone" value="<%= phone %>"readonly></td>

</tr>

<tr>
<td>Tenant Email</td>
<td><input type="text" name="email" value="<%= email %>"readonly></td>

</tr>

<tr>
<td>Username</td>
<td><input type="text" name="uname" value="<%= username %>"readonly></td>

</tr>

<tr>
<td>Password</td>
<td><input type="password" name="pass" value="<%= password %>"readonly></td>

</tr>



</table>

<input type="submit" class="btn" name="submit" value="Delete my Account"><br>





</form>

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
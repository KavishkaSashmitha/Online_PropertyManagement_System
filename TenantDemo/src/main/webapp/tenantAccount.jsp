<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>OnlineProperty - User Profile</title>
	<link href="CSS/style.css" rel="stylesheet" type="text/CSS"/>
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

.center {
  margin: 0;
  position: absolute;
  top: 66%;
  left: 42%;
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
   background-color: Red;
  border: none;
  color: white;
  padding: 10px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  margin-bottom: 50px;
}

.btn {
  margin: 0;
  position: absolute;
  top: 66%;
  left: 58%;
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
  background-color: Black;
  border: none;
  color: white;
  padding: 10px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  margin-bottom: 50px;
}
.bck{
 background-repeat: no-repeat;
  background-size: cover;
 height: 100%;
    width: 100%;

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

<div class="bck">


<h1>Tenant Profile</h1>

<c:forEach var="ten" items = "${tenDetails }">

<c:set var="id" value="${ten.id }"/>
<c:set var="name" value="${ten.name }"/>
<c:set var="phone" value="${ten.phone }"/>
<c:set var="email" value="${ten.email }"/>
<c:set var="username" value="${ten.username}"/>
<c:set var="password" value="${ten.password }"/>



<table id="tenant">
<tr>

<td style="font-weight:bold">Tenant</td>
<td style="font-weight:bold">Details</td>

</tr>



<tr>
<td style="font-weight:bold">Tenant Id</td>
<td>${ten.id }</td>

</tr>


<tr>
<td style="font-weight:bold">Tenant Name</td>
<td>${ten.name }</td>

</tr>
<tr>
<td style="font-weight:bold">Tenant phone</td>
<td>${ten.phone }</td>

</tr>

<tr>
<td style="font-weight:bold">Tenant Email</td>
<td>${ten.email }</td>

</tr>
<tr>
<td style="font-weight:bold">Tenant Username</td>
<td>${ten.username}</td>

</tr>
<tr>
<td style="font-weight:bold">Tenant Password</td>
<td>${ten.password }</td>

</tr>


</table>









</c:forEach>
</table>
<c:url value="updateTenant.jsp" var="tenupdate">
 <c:param name="id" value="${id }"/>
 <c:param name="name" value="${name}"/>
 <c:param name="phone" value="${phone}"/>
 <c:param name="email" value="${email}"/>
 <c:param name="username" value="${username}"/>
 <c:param name="password" value="${password}"/>
 
 
 
</c:url>
<br>

<a href="${tenupdate}">

<input type="button" class="btn" name="update" value="Update My Data">

</a>




<c:url value="deleteTenant.jsp" var="tendelete">

<c:param name="id" value="${id }"/>
 <c:param name="name" value="${name}"/>
 <c:param name="phone" value="${phone}"/>
 <c:param name="email" value="${email}"/>
 <c:param name="username" value="${username}"/>
 <c:param name="password" value="${password}"/>
 



</c:url>


<a href ="${tendelete}">

<input type="button" class="center" name="delete" value="Delete My Account">

</a>

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
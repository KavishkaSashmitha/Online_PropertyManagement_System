<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
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
    body{
    	background:url("images/back.jpg");
    	backdrop-filter:blur(20.0px);
    	background-repeat: no-repeat;
  		background-size: 100% 100%;
    	
    
    font-family: Arial, sans-serif;
}

.slider {
    width: auto; /* Allow the slider to adjust its width */
    height: 600px; /* Set a fixed height */
    position: relative;
    overflow: hidden;
}

.slide {
    display: none;
    text-align: center;
    width: 100%; /* Make sure the images fill the width */
    height: 100%; /* Set a fixed height for each image */
}

img {
    width: 100%;
    max-height: 100%; /* Ensure images fit within the fixed width and height of each slide */
}


button {
    margin-top: 10px;
    padding: 5px 10px;
    cursor: pointer;
}

.prev {
    float: left;
}

.next {
    float: right;
}
    .card {
    margin:100px;
 width: 220px;
 height: 350px;
 border-radius: 20px;
 background: #f5f5f5;
 position: relative;
 padding: 1.8rem;
 border: 2px solid #c3c6ce;
 transition: 0.5s ease-out;
 overflow: visible;
  display: inline-block; /* Use flexbox to make the cards appear in the same row */
  justify-content: space-between; /* Distribute space evenly between the cards */
  
  
}


.card-details {
 color: black;
 height: 100%;
 gap: .5em;
 display: grid;
 place-content: center;
}

.card-button {
 transform: translate(-50%, 125%);
 width: 60%;
 border-radius: 1rem;
 border: none;
 background-color: #008bf8;
 color: #fff;
 font-size: 1rem;
 padding: .5rem 1rem;
 position: absolute;
 left: 50%;
 bottom: 0;
 opacity: 0;
 transition: 0.3s ease-out;
}

.text-body {
 color: rgb(134, 134, 134);
}

/*Text*/
.text-title {
 font-size: 1.5em;
 font-weight: bold;
}

/*Hover*/
.card:hover {
 border-color: #008bf8;
 box-shadow: 0 4px 18px 0 rgba(0, 0, 0, 0.25);
}

.card:hover .card-button {
 transform: translate(-50%, 50%);
 opacity: 1;
}
    
    </style>
</head>
<body>
    <div class="header">
        <div class="header_content">
            <div class="logo">
                <a href="Home.jsp">
                    <img src="images/logo.jpg" height="90px" width="90px">
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
                        <a href="search.jsp">
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
     <!-- image Slider -->
      <div class="slider">
        <div class="slide"><img src="images/1.jpg" alt="Image 1"></div>
        <div class="slide"><img src="images/5.jpg" alt="Image 2"></div>
        <div class="slide"><img src="images/2.jpg" alt="Image 3"></div>
        
    </div>

<script>
let slideIndex = 0;

showSlide(slideIndex);

function changeSlide(n) {
    showSlide((slideIndex += n));
}

function showSlide(n) {
    const slides = document.getElementsByClassName("slide");

    if (n >= slides.length) {
        slideIndex = 0;
    }

    if (n < 0) {
        slideIndex = slides.length - 1;
    }

    for (let i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }

    slides[slideIndex].style.display = "block";
}

// Auto-advance the slider every 3 seconds (adjust as needed).
setInterval(function () {
    changeSlide(1);
}, 3000); // Change slide every 3 seconds
</script>
 <div class="card">
  <div class="card-details">
    <p class="text-title">Apartment</p>
    <p class="text-body">In an online property management system, a condo, short for condominium,
     is a type of residential property unit. </p>
  </div>
  <button class="card-button">More info</button>
</div>
<div class="card">
  <div class="card-details">
    <p class="text-title">House</p>
    <p class="text-body">In an online property management system, a condo, short for condominium,
     is a type of residential property unit.  </p>
  </div>
  <button class="card-button">More info</button>
</div>
<div class="card">
  <div class="card-details">
    <p class="text-title">Condo</p>
    <p class="text-body">In an online property management system, a condo, short for condominium,
     is a type of residential property unit. .</p>
  </div>
  <button class="card-button">More info</button>
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
                <img src="images/logoblack.jpg" height="50px" >
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
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>View</title>
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
        body {
            font-family: "Roboto", sans-serif;
            background: #FDC830;
            background: -webkit-linear-gradient(to right, #F37335, #FDC830);
            background: linear-gradient(to right, #F37335, #FDC830);
        }

        .table {
            margin: 20px auto;
            width: 90%;
            border-spacing: 0;
            text-align: center;
            border-radius: 12px;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            padding: 10px;
            background-color: #12192c;
        }

        .table th {
            font-weight: 300;
            font-size: 16px;
            color: #FDC830;
            line-height: 26px;
            padding: 18px 30px;
        }

        .table thead tr {
            background: #12192c;
        }

        .table td {
            padding: 30px 10px;
            font-weight: 300;
            font-size: 16px;
            color: black-2;
            line-height: 26px;
            text-transform: uppercase;
            color: #fff;
        }

        .table tbody tr:nth-child(odd) {
            background: #002147;
        }

        .table tbody tr:nth-child(even) {
            background: #12192c;
        }

        .table__wrapper {
            padding-top: 40px;
        }

        .btn {
            display: inline-block;
            font-weight: 700;
            font-size: 15px;
            line-height: 25px;
            text-transform: uppercase;
            width: 170px;
            text-align: center;
            padding: 10px;
            border-radius: 10px;
            transition: 0.3s ease;
            text-decoration: none;
        }

        .btn:hover {
            color: white;
        }

        .btn__active {
            color: #4ed99c;
            border: 2px solid #4ed99c;
        }

        .btn__active:hover {
            background: #4ed99c;
        }

        .btn__pledged {
            color: #f14044;
            border: 2px solid #f14044;
        }

        .btn__pledged:hover {
            background: #f14044;
        }

        @media (max-width: 768px) {
            .table td {
                display: block;
                text-align: right;
            }

            .table td:before {
                content: attr(data-label);
                float: left;
                text-transform: uppercase;
                font-weight: bold;
            }

            .table thead display none tr {
                margin-bottom: 30px;
                display: block;
            }
        }

        .credit a {
            text-decoration: none;
            color: #000;
            font-weight: 800;
        }

        .credit {
            text-align: center;
            font-family: Verdana, Geneva, Tahoma, sans-serif;
            margin: 10px;
        }

    </style>
</head>
<body>
<div class="header">
    <div class="header_content">
        <div class="logo">
            <a href="Home.jsp">
                <img src="images/logo.png" height="90px" width="90px">
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
    <c:forEach var="book" items="${bookDetails}">
        <c:set var="id" value="${book.id }" />
        <c:set var="nic" value="${book.nic }" />
        <c:set var="name" value="${book.name }" />
        <c:set var="address" value="${book.address }" />
        <c:set var="email" value="${book.email }" />
        <c:set var="contact" value="${book.contact }" />
        <c:set var="proffesion" value="${book.proffesion }" />
        <c:set var="date" value="${book.date }" />

        <table class="table">
            <thead>
                <tr>
                    <th>No</th>
                    <th>NIC</th>
                    <th>Name</th>
                    <th>Address</th>
                    <th>Profession</th>
                    <th>Contact</th>
                    <th>Email</th>
                    <th>Date</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td data-label="Event Name">${book.id}</td>
                    <td data-label="Event Name">${book.nic}</td>
                    <td data-label="Event Date">${book.name }</td>
                    <td data-label="Total Seats">${book.address }</td>
                    <td data-label="Seats Available">${book.proffesion }</td>
                    <td data-label="Seats Available">${book.contact }</td>
                    <td data-label="Seats Available">${book.email }</td>
                    <td data-label="Seats Available">${book.date }</td>
                    <c:url value="updateBooking.jsp" var="bookupdate">
                        <c:param name="id" value="${ id}"/>
                        <c:param name="nic" value="${ nic}"/>
                        <c:param name="name" value="${ name}"/>
                        <c:param name="address" value="${ address}"/>
                        <c:param name="proffesion" value="${ proffesion}"/>
                        <c:param name="contact" value="${contact }"/>
                        <c:param name="email" value="${ email}"/>
                        <c:param name="date" value="${ date}"/>
                    </c:url>
                    <td><a href="${bookupdate }" class="btn btn__active">Update</a></td>
                    <td>
                        <c:url value="deletebooking.jsp" var="bookdelete">
                            <c:param name="id" value="${id }"></c:param>
                            <c:param name="nic" value="${nic }"></c:param>
                            <c:param name="name" value="${name }"></c:param>
                            <c:param name="address" value="${address }"></c:param>
                            <c:param name="email" value="${email }"></c:param>
                            <c:param name="contact" value="${contact }"></c:param>
                            <c:param name="date" value="${date }"></c:param>
                        </c:url>
                        <a href="${bookdelete }" class="btn btn__active">Delete</a></td>
                </tr>
            </tbody>
        </table>
    </c:forEach>

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
            <img src="images/logoblack.png" height="50px">
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

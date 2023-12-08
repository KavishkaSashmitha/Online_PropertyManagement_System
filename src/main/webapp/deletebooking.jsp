<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Booking</title>
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
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
        text-align: center;
        margin: 0;
        padding: 0;
    }

    form {
        max-width: 400px;
        margin: 0 auto;
        padding: 20px;
        background-color: #fff;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        border-radius: 5px;
    }
    .form-container {
        margin: 40px; /* Add margin to create a gap */
    }

    h2 {
        color: #333;
    }

    label {
        display: block;
        text-align: left;
        font-weight: bold;
        margin-top: 10px;
    }

    input[type="text"] {
        width: 100%;
        padding: 8px;
        margin: 5px 0;
        border: 1px solid #ccc;
        border-radius: 3px;
    }

    input[type="submit"] {
        background-color: #ff4d4d;
        color: #fff;
        border: none;
        padding: 10px 20px;
        border-radius: 5px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #ff1a1a;
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
                        <a href="search.jsp">
                            <span class="title">Property</span>
                        </a>
                    </li>
                    <li>
                        <a href="search.jsp">
                            <span class="title">Maintanance</span>
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
<form action="delete" method="post">
    <h2>Delete Booking</h2>
    <%
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String address = request.getParameter("address");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    %>
    <label for="id">Booking ID:</label>
    <input type="text" name="id" value="<%= id %>" readonly>

    <label for="name">Name:</label>
    <input type="text" name="name" value="<%= name %>" readonly>

    <label for="address">Address:</label>
    <input type="text" name="address" value="<%= address %>" readonly>

    <label for="email">Email:</label>
    <input type="text" name="email" value="<%= email %>" readonly>

    <label for="phone">Phone Number:</label>
    <input type="text" name="phone" value="<%= phone %>" readonly>

    <label for="username">User Name:</label>
    <input type="text" name="username" value="<%= username %>" readonly>

    <input type="submit" name="Delete" value="Delete Booking">
</form>
</div>

</body>
</html>

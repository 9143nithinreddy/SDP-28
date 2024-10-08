<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>User Homepage</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('images/userhomepage.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh;
        }

        .header {
            color: black;
            padding: 20px;
            text-align: center;
        }

        .navbar {
            list-style: none;
            margin: 0;
            padding: 0;
        }
        .navbar li {
            display: inline-block;
            margin-right: 20px;
        }
        .navbar a {
            color: #333;
            text-decoration: none;
        }

        /* Main content styles */
        .main {
            padding: 20px;
        }

        /* Footer styles */
        .footer {
            background-color: white;
            color: white;
            padding: 15px;
            text-align: bottom;
        }
        
        .bubble {
            background-color: transparent;
            color: blue;
            text-align: bottom-center;
        }

        .h5 {
            text-align: bottom;
        }

        .ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
        }
    </style>
    <script src="script.js"></script>
    
    <header class="header">
        <h1>Welcome, User!</h1>
    </header>
    
    <nav class="navbar">
        <ul>
            <li><a href="userhome.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dashboard&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
            <li><a href="userlistbook.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;All Books&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
            <li><a href="">&nbsp;&nbsp;&nbsp;&nbsp;All Documents&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
            <li><a href="mybooks.jsp">&nbsp;&nbsp;&nbsp;&nbsp;My Books&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
            <li><a href="">&nbsp;&nbsp;&nbsp;&nbsp;My Documents&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
            <li><a href="userprofile.jsp">&nbsp;&nbsp;&nbsp;&nbsp;Profile&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
            <li><a href="index.html">&nbsp;&nbsp;&nbsp;&nbsp;Logout&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
        </ul>
    </nav>
</head>
<body>
</body>
</html>

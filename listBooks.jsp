<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>List of Books</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        h2 {
            margin-top: 20px;
            color: #333;
        }
        .grid-container {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 20px;
            padding: 20px;
            width: 100%;
            max-width: 1200px;
            cursor:pointer;
            margin: 20px 0;
        }
        .book-card {
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            text-align: center;
            transition: transform 0.3s ease;
        }
        .book-card img {
            width: 150px;
            height: 200px;
            object-fit: cover;
            border-radius: 4px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .book-card img:hover {
            transform: scale(1.1);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
        }
        .book-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
        }
        .book-card h3 {
            margin: 10px 0 5px;
            font-size: 18px;
            color: #333;
        }
        .book-card p {
            margin: 5px 0;
            font-size: 14px;
            color: #666;
        }
        .book-card .btn {
            display: inline-block;
            padding: 8px 12px;
            border-radius: 4px;
            text-decoration: none;
            color: white;
            margin: 5px 3px;
        }
        .btn-edit {
            background-color: #28a745;
        }
        .btn-delete {
            background-color: #dc3545;
        }
        .container {
            text-align: center;
            margin-bottom: 50px;
        }
        .btn-add {
            background-color: #007bff;
            padding: 10px 20px;
            color: white;
            border-radius: 4px;
            text-decoration: none;
        }
    </style>
    
    
    
    
</head>
<head>
    <title>Admin Homepage</title>
    <style>
        /* General styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        /* Header styles */
        .header {
        font-family:Arial, sans-serif;
            background-color: none;
            color: black;
            padding: 20px;
            text-align: center;
        }

        /* Navigation styles */
        .navbar {
            list-style: none;
             background-color: none;
            margin: 0;
            padding: 0;
        }
        .navbar li {
            display: inline-block;
            margin-right: 20px;
        }
        .navbar a {
            color: #FF7F50;
            text-decoration: none;
        }

        /* Main content styles */
        .main {
            padding: 20px;
        }

        /* Footer styles */
        .footer {
            background-color: #333;
            color: white;
            padding: 20px;
            text-align: bottom;
        }
    </style>
    <script src="script.js"></script>
</head>
<body>
    <header class="header">
        <h1>Lets Check Some Books </h1>
    </header>
    <nav class="navbar">
        <ul>
            <li><a href="adminhome.jsp">&nbsp;&nbsp;&nbsp;&nbsp;Dashboard&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
            <li><a href="addbook.jsp">&nbsp;&nbsp;&nbsp;&nbsp;Add New Book&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
            <li><a href="listBooks.jsp">&nbsp;&nbsp;&nbsp;&nbsp;All Books&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
            <li><a href="">&nbsp;&nbsp;&nbsp;&nbsp;All Documents&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
            <li><a href="">&nbsp;&nbsp;&nbsp;&nbsp;Profile&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
        </ul>
    </nav>
    
   
    
</body>



<body>
    <h2>List of Books</h2>
    <div class="grid-container">
        <%
            String dbURL = "jdbc:mysql://localhost:3306/jfsd-ps46";
            String dbUser = "root";
            String dbPassword = "12345";

            try (Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPassword)) {
                String sql = "SELECT * FROM books";
                Statement statement = conn.createStatement();
                ResultSet resultSet = statement.executeQuery(sql);

                while (resultSet.next()) {
                    int id = resultSet.getInt("id");
                    String name = resultSet.getString("name");
                    String author = resultSet.getString("author");
                    String category = resultSet.getString("category");
                    String price = resultSet.getString("price");
                    String description = resultSet.getString("description");
                    Blob imageBlob = resultSet.getBlob("image");
                    byte[] imageBytes = imageBlob.getBytes(1, (int) imageBlob.length());
                    String base64Image = java.util.Base64.getEncoder().encodeToString(imageBytes);
        %>
        <div class="book-card" onclick="location.href='adminbookcontent.jsp?id=<%= id %>'">
            <img src="data:image/jpeg;base64,<%= base64Image %>" alt="Book Image">
            <h3><%= name %></h3>
            <p><strong>Author:</strong> <%= author %></p>
            <p><strong>Category:</strong> <%= category %></p>
            <p><strong>Price:</strong> $<%= price %></p>
            <a href="EditBookServlet?id=<%= id %>" class="btn btn-edit">Edit</a>
            <a href="DeleteBookServlet?id=<%= id %>" class="btn btn-delete" onclick="return confirm('Are you sure you want to delete this book?');">Delete</a>
        </div>
        <%
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </div>

    <div class="container">
        <a href="addbook.jsp" class="btn-add">Add New Book</a>
    </div>
</body>
</html>

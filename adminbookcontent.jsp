<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Book Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #DC9B83;
            margin: 0;
            padding: 20px;
        }

        .book-container {
            max-width: 600px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            position: relative;
        }

        h2 {
            color: #333;
        }

        img {
            width: 200px; /* Fixed width */
            height: 300px; /* Fixed height */
            object-fit: cover; /* Maintain aspect ratio and fill the area */
            border-radius: 4px;
            margin-bottom: 20px;
        }

        .details {
            margin-top: 20px;
        }

        .btn-back {
            display: inline-block;
            padding: 10px 15px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }

        .btn-back:hover {
            background-color: #0056b3;
        }

        .close-btn {
            position: absolute;
            top: 10px;
            right: 10px;
            background-color: transparent;
            border: none;
            font-size: 24px;
            color: #333;
            cursor: pointer;
        }
        .btn-borrow {
            background-color: #28a745;
            padding: 10px 20px;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            display: inline-block;
            margin-top: 20px;

        .close-btn:hover {
            color: red;
        }
    </style>
</head>
<body>
    <div class="book-container">
        <button class="close-btn" onclick="window.location.href='listBooks.jsp';">&times;</button>
        <%
            String dbURL = "jdbc:mysql://localhost:3306/jfsd-ps46";
            String dbUser = "root";
            String dbPassword = "12345";

            String bookId = request.getParameter("id");
            if (bookId != null) {
                try (Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPassword)) {
                    String sql = "SELECT * FROM books WHERE id = ?";
                    PreparedStatement statement = conn.prepareStatement(sql);
                    statement.setInt(1, Integer.parseInt(bookId));
                    ResultSet resultSet = statement.executeQuery();

                    if (resultSet.next()) {
                        String name = resultSet.getString("name");
                        String author = resultSet.getString("author");
                        String category = resultSet.getString("category");
                        String price = resultSet.getString("price");
                        String description = resultSet.getString("description");
                        Blob imageBlob = resultSet.getBlob("image");
                        byte[] imageBytes = imageBlob.getBytes(1, (int) imageBlob.length());
                        String base64Image = java.util.Base64.getEncoder().encodeToString(imageBytes);
        %>
        <h2><%= name %></h2>
        <img src="data:image/jpeg;base64,<%= base64Image %>" alt="Book Image">
        <div class="details">
            <p><strong>Author:</strong> <%= author %></p>
            <p><strong>Category:</strong> <%= category %></p>
            <p><strong>Price:</strong> $<%= price %></p>
            <p><strong>Description:</strong> <%= description %></p>
        </div>
        
        <%
        
                    } else {
                        out.println("<p>Book not found.</p>");
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    out.println("<p>Error retrieving book details.</p>");
                }
            } else {
                out.println("<p>No book ID provided.</p>");
            }
        %>
    </div>
</body>
</html>

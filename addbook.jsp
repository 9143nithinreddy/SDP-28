<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin Books</title>
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
            background-color: #333;
            color: white;
            padding: 20px;
            text-align: center;
        }

        /* Navigation styles */
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
            background-color: #333;
            color: white;
            padding: 20px;
            text-align: center;
        }
    </style>
    <script src="script.js"></script>
</head>
<body>
    <header class="header">
        <h1>Lets Add some books!</h1>
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
    <footer class="footer" align="bottom">
    </footer>
   
    
</body>






<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Add New Book</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
</head>

<body>

<input type="hidden" id ="status" value="<%= request.getAttribute("status") %>">


	<div class="main">

		<!-- Sign up form -->
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Add Book</h2>
		<form action="AddBookServlet" method="post" enctype="multipart/form-data">
		<div class="form-group">
		<label for="id"><i
		class="zmdi zmdi-account material-icons-name"></i></label> 
		<input type="text" name="id" id="id" placeholder="Book ID" />
		</div>
		
		
		<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> 
									<input type="text" name="name" id="name" placeholder="Book Name" />
							</div>
        <div class="form-group">
								<label for="author"><i class="zmdi zmdi-email"></i></label> 
								<input type="text" name="author" id="author" placeholder="Book author" />
							</div>
        
        <div class="form-group">
								<label for="category"><i class="zmdi zmdi-lock"></i></label> 
								<input	type="text" name="category" id="category" placeholder="Book Category" />
							</div>
        
       <div class="form-group">
								<label for="price"><i class="zmdi zmdi-lock"></i></label> 
								<input	type="text" name="price" id="price" placeholder="Price" />
							</div>
       
        <div class="form-group">
								<label for="description"><i class=""></i></label>
	                             	<textarea  id ="description" name="description" placeholder="Enter description" ></textarea><br><br>
							</div>     
							
		<div class="form-group">
							<label for="image"></label>
							<input type="file" id="image" name="image">
							
							</div>
		
        <div class="form-group">
        <input type="submit" class="form-submit" value="Add Book">
        </div>
        
    </form>
    

	
		
						
						
					</div>
					<div class="signup-image">
						<figure>
							<img src="images/signup-image.jpg" alt="sing up image">
						</figure>
						<a href="" class="signup-image-link"></a>
					</div>
				</div>
			</div>
		</section>


	</div>
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	



</body>
</html>
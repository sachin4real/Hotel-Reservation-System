<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Login</title>
	
	<style type="text/css">
		body {
		  background-color: #f1f1f1;
		  font-family: Arial, Helvetica, sans-serif;
		}
		.login-container {
		  background-color: #ffffff;
		  max-width: 500px;
		  margin: 100px auto;
		  padding: 30px;
		  border-radius: 5px;
		  box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.2);
		}
		h1 {
  		  text-align: center;
 		}
 		form {
		  display: flex;
		  flex-direction: column;
		}
		input {
		  padding: 10px;
		  border-radius: 5px;
		  border: none;
		  margin-bottom: 20px;
		  border: 1px solid #ccc;
		}
		button {
		  background-color: #4CAF50;
		  color: white;
		  padding: 10px;
		  border-radius: 5px;
		  border: none;
		  cursor: pointer;
		}
		button:hover {
		  background-color: #3e8e41;
		}	
	</style>
</head>
<body>

	<div class = "login-container">
	<h1>Login</h1>
		
	<form action="LoginServlet" method="post">
		
		User Name<input type="text" name="uid" placeholder="Enter your username" required><br>
		Password<input type="password" name="pass" placeholder="Enter your password" required><br>
		
		<button type="submit" name="submit">login</button> 
		
	</form>
	</div>
</body>
</html>   
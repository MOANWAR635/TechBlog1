<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
  <style type="text/css">
  
  .ha
  {
  text-align: center;
	margin-top: 50px;
	margin-right: 500px;
	margin-left:450px;
	margin-bottom: 50px;
	padding-top:15px;
	padding-bottom:20px;
	padding-right:5px;
	border: solid 1px ;
	background-color: lightblue;
  
  }
  
  </style>
</head>
<body bgcolor="lightblue">
<form action="sahab" method="post">
<h2>Welcome to Registration  Page!!!</h2>
<div class="ha">
<h3 class="sa">Welcome to Registration page!!!</h3>
Enter name <input type="text" name="username" placeholder="Enter your name"><br><br>
Enter Address <input type="text" name="useraddress" placeholder="Enter your address"><br><br>
Enter City <input type="text" name="usercity" placeholder="Enter your city"><br><br>
Enter Emailid <input type="email" name="useremail" placeholder="Enter your Email"><br><br>
Enter Password <input type="password" name="pass" placeholder="Enter you password"><br><br>
<input type="submit" value="Submit">
</div>
</form>
<h2><a href="Login.jsp"> Go to Login Page</a></h2>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

.bb
{
	text-align: center;
	margin-top: 50px;
	margin-right: 490px;
	margin-left:490px;
	margin-bottom: 50px;
	padding-top:15px;
	padding-bottom:20px;
	padding-right:5px;
	border: solid 1px ;
	background-color: lightblue;
}
.da
{
	color: blue;
}


</style>
</head>
<body bgcolor="lightblue">
<form action="ammy" method="post">
<h2> Welcome to Login page</h2>
<div class="bb">
<h3 class="da">Welcome to Login page!!!</h3>
Enter Emailid  <input type="email" name="useremail" placeholder="Enter Your Email"><br><br>
Enter Password  <input type="password" name="pass" placeholder="Enter You Password"><br><br>
<input type="submit" value="Submit"><br><br>
<a href="ForgetPassword.jsp"> Go to Forget page !!!!!!</a><br><br>
<a href="Registration.jsp">New User Register Here !!!!!!</a><br><br>
</div>
</form>
<h2><a href="index.jsp">Go to Home to Page</a></h2>
</body>
</html>
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

</style>
</head>
<body bgcolor="lightblue">
<form action="ForgetServlet1" method="post">
<div class="bb">
<h2>Note: Enter Your Email Id: To Give New Password </h2>
<input type="text" name="email" placeholder="Enter your Email Id"><br><br>
<input type="password" name="pass" placeholder="Enter your Password"><br><br>
<input type="submit" value="Submit">
</div>
</form>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="mystyle.css" rel="stylesheet" type="text/css">
<style type="text/css">
.fa
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
h3
{
	color: red;

}
</style>
</head>
<body>
<center>
<form action="AdminServlet1" method="post">
<div class="fa">
<h3>Hello Admin</h3>
Enter Your Email:<input type="text" name="admin" placeholder="Enter Your Email oR Name"><br><br>
Enter Your Password:<input type="password" name="pass" placeholder="Enter Your Password"><br><br>
<input type="submit" value="Submit">
</form>
</div>
</center>
</body>
</html>
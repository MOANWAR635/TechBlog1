<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="mystyle.css" rel="stylesheet" type="text/css">
<style type="text/css">
.bca
{
	
	text-align: center;
	margin-top: 50px;
	margin-right: 490px;
	margin-left:490px;
	margin-bottom: 50px;
	padding-right:0px;
	border: solid 1px ;
	width:500px;
	height:700px;
	padding-right: 40px;
	background-color: lightblue;
	
}
</style>
</head>
<body bgcolor="lightblue">
<form action="AddPostServlet" method="post">
<div class="bca">
<h2> you can uptoad your post </h2>
Enter your Cid:<input type="text" name="cid" placeholder="Enter your Cid"><br><br>
Enter your 	PId:<input type="text" name="pid" placeholder="Enter your PId" ><br><br>
Enter your 	Ptitle:<input type="text" name="ptitle" placeholder="Enter your Title" ><br><br>
Enter your Pcontent:<textarea name="pcontent" placeholder="Enter your PContent" style="height: 200px; width: 350px;"></textarea><br><br>
Enter your PCode:<textarea name="pcode" placeholder="Enter your PCode (if and any)"  style="height: 200px; width: 350px;"></textarea><br><br>.
 Select your Ppic::<input type="file" name="ppic"><br><br>
 <input type="submit" value="submit">
</div>
</form>
</body>
</html>
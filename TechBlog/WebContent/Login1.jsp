<%@page import="com.tech.blog.helper.ConnectionDatabase"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="javax.servlet.http.HttpSession" %>
    <%@page import="com.tech.blog.servlet.LoginServlet" %>
    <%@page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="mystyle.css" rel="stylesheet" type="text/css">
<style type="text/css">

.love
{
	border : 1px solid  green;
	border-spacing :0px;
	height: 500px;
	width: 900px;
	margin-top: 30px;
	margin-left:20px;
	padding-top: 20px;  
	
	
}


</style>
</head>
<body>
<div class="am">.
<div class="ua">
<a href="index.jsp">TechBlog</a>
</div>
<div class="bb"><a href="#">Learn Code With Anwarhussain</a></div>
<div class="bb1">
<select>
<option selected disabled="disabled">---Selected Categories---</option>
<option><a href="#"></a> Java Programming </option>
<option><a href="#"></a> Android Programming </option>
<option><a href="#"></a> C++ Programming </option>
<option><a href="#"></a> Oracle Programming </option>
</select>
</div>
<div class="ca"><a href="Registration.jsp">Registration Now</a></div>
<div class="ga"><a href="Login.jsp">Login</a></div>
<div class="ga"><a href="LogOut.jsp"> LogOut</a></div>
<div class="ga"><a href="Post.jsp">Posts</a></div>
<div class="ca1"><h3><%=session.getAttribute("user")%></h3></div>
</div>
<div class="love">
<center><h3 style="color: red;"> This is All Posts Of User </h3></center>
<%

	Connection conn=ConnectionDatabase.getConnection();
PreparedStatement ps=conn.prepareStatement("select * from posts");
ResultSet re=ps.executeQuery();

out.println("<html><body><table><tr> <td>pid</td> <td>ptitle</td> <td>pcontent</td> <td>pcode</td> <td>ppic</td> <td>cid</td></tr>");
while(re.next())
{
	out.print("<tr><td>"+re.getString(1)+"</td>  <td>"+re.getString(2)+"</td> <td>"+re.getString(3)+"</td>   <td>"+re.getString(4)+"</td>   <td>"+re.getString(5)+"</td>   <td>"+re.getString(6)+"</td> </tr>");
	
}
out.println("</table> </body> <html>");

%>
</div>
<marquee><h3>This is user page user can uptoad your post </h3></marquee>
</body>
</html>
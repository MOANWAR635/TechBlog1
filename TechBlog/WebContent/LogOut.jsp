<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="javax.servlet.http.HttpSession" %>
   <%@page import="com.tech.blog.servlet.LoginServlet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Welcome Logout Profile</h1>
<%

session=request.getSession(false);
if(session!=null)
{
session.removeAttribute("user");
session.invalidate();
response.sendRedirect("index.jsp");
}
else
{
	response.sendRedirect("Login1.jsp");
}
%>
</body>
</html>
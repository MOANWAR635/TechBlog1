package com.tech.blog.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tech.blog.helper.ConnectionDatabase;

public class LoginServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			Connection conn=ConnectionDatabase.getConnection();
			resp.setContentType("text/html");
			PrintWriter out=resp.getWriter();
			String email=req.getParameter("useremail");
			String password=req.getParameter("pass");
			HttpSession s=req.getSession();
			s.setAttribute("user", email);
			out.println(email);
			out.println(password);
			PreparedStatement ps=conn.prepareStatement("select * from student where email=? and password=?");
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				/*if(ps.equals(email)&& ps.equals(password))
				{
					resp.sendRedirect("Login1.jsp");
				}*/
				resp.sendRedirect("Login1.jsp");
			}
			else {
				resp.sendRedirect("error.jsp");
			}
			
		} 
		catch (Exception e) 
		{
			
		}
		
	}

}

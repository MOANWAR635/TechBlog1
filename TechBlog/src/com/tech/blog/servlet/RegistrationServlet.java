package com.tech.blog.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tech.blog.helper.ConnectionDatabase;

public class RegistrationServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		 try
		 {
			 Connection conn=ConnectionDatabase.getConnection();
			 resp.setContentType("text/html");
				PrintWriter out=resp.getWriter();
		System.out.println(conn);
				String name=req.getParameter("username");
				String address=req.getParameter("useraddress");
				String city=req.getParameter("usercity");
				String email=req.getParameter("useremail");
				String password=req.getParameter("pass");
				
				out.println(name);
				out.println(address);
				out.println(city);
				out.println(email);
				out.println(password); 
				
				PreparedStatement ps=conn.prepareStatement("insert into student values(?,?,?,?,?)");
				ps.setString(1, name);
				ps.setString(2, address);
				ps.setString(3, city);
				ps.setString(4, email);
				ps.setString(5, password);
				ps.executeUpdate();
				
				
		 }
		
		catch (Exception e) {
		e.printStackTrace();
		}
		
		
	}

}

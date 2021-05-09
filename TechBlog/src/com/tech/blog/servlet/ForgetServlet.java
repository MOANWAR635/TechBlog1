package com.tech.blog.servlet;
import javax.sql.*;

import com.tech.blog.helper.ConnectionDatabase;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ForgetServlet
 */
@WebServlet("/ForgetServlet")
public class ForgetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		try {
			
			Connection conn=ConnectionDatabase.getConnection();
			
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			String email=request.getParameter("email");
			String password=request.getParameter("pass");
			
			PreparedStatement ps=conn.prepareStatement("update student set password=? where email=?");
			ps.setString(2, email);
			ps.setString(1, password);
			int i=ps.executeUpdate();
			if(i>0)
			{
				
				response.sendRedirect("Update.jsp");
				
			}
			else
			{
					response.sendRedirect("ForgetPassword.jsp");
			
			}
			
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		
		
	}

}

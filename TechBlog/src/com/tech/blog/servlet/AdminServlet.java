package com.tech.blog.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String name=request.getParameter("admin");
		String password=request.getParameter("pass");
		
		if(name.equals("anwar0786h@gmail.com") && name.equals("anwarhussain") || password.equals("0786")) 
		{
			response.sendRedirect("index.jsp");
			
		}
		else {
			response.sendRedirect("admin.jsp");
		}	
	
	}

}

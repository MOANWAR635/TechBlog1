package com.tech.blog.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.tech.blog.helper.ConnectionDatabase;
public class PostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		try {
			 Connection conn=ConnectionDatabase.getConnection();
			response.setContentType("text/htlm");
			PrintWriter out=response.getWriter();
			String cid=request.getParameter("cid");
			String pid=request.getParameter("pid");
			String ptitle=request.getParameter("ptitle");
			String pcontent=request.getParameter("pcontent");
			String pcode=request.getParameter("pcode");
			String ppic=request.getParameter("ppic");
			
			PreparedStatement ps=conn.prepareStatement("insert into posts values(?,?,?,?,?,?)");
			ps.setString(1, pid);
			ps.setString(2, ptitle);
			ps.setString(3, pcontent);
			ps.setString(4, pcode);
			ps.setString(5, ppic);
			ps.setString(6, cid);
			ps.executeUpdate();
			out.println(cid);
			out.println(pid);
			out.println(ptitle);
			out.println(pcontent);
			out.println(pcode);
			out.println(ppic);
		}
		catch (Exception e) {
			
		}
	
		
	
		
	}

}

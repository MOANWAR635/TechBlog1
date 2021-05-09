package com.tech.blog.helper;
import java.sql.*;
public class ConnectionDatabase
{

	private static Connection conn;
	 static
	 {
		 try
		 {
			 Class.forName("com.mysql.jdbc.Driver");
			 
			 conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/youtube","root","anwar");
		 }
		 catch (Exception e) {
		e.printStackTrace();
		}
	 }
	 public static Connection getConnection()
	 {
		return conn; 
	 }
	
}

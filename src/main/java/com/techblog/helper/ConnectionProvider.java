package com.techblog.helper;
import java.sql.*;
public class ConnectionProvider {

	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			
			if(con==null) {
				// For loading driver class
			Class.forName("com.mysql.jdbc.Driver");
			   // creating a connection
			con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/techblog","root","admin");
			
			}
		
		}
		catch(Exception e) {
			
			
		}
		
		return con;
	}
}

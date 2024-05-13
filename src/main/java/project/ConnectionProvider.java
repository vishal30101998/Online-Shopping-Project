package project;

import java.sql.*;

public class ConnectionProvider {
	
	public static Connection getCon() {
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping","root","Vishal@1998");
			return conn;
			
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
	}

}

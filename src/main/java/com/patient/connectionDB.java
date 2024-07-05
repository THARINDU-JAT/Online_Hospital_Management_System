package com.patient;

import java.sql.Connection;
import java.sql.DriverManager;


public class connectionDB {
	
	private static String url = "jdbc:mysql://localhost:3307/hospital_management_system";
	private static String userName = "root";
	private static String password = "";
	private static Connection con;

	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, userName, password);
			
		}
		catch (Exception e) {
			System.out.println("Database connection is  unsuccessful.....!");
		}
		
		return con;
	}

	
}

package com.DB;
import java.sql.*;
public class DBConnect {
	
	private static  Connection con;
	public static Connection getCon() {
		try {
			 Class.forName("com.mysql.cj.jdbc.Driver");
			 con=DriverManager.getConnection("jdbc:mysql://localhost/ebook_app","root","root");
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		return con;
	}
}

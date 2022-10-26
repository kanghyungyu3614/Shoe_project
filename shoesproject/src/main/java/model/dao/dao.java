package model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



public class dao {

	
	Connection con;	PreparedStatement ps;	ResultSet rs;
	public dao() {
		try { 
			Class.forName("com.mysql.cj.jdbc.Driver"); 
			 con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/shoemain", 
					"root",
					"1234");
		}catch (Exception e) { System.out.println(e);}
	}
	
}
package com.atenea.datos;

import java.sql.*;


public class Conexion {
	
	Connection con = null;
	

	
	public void conectar(){
		try {
		    Class.forName("com.mysql.jdbc.Driver").newInstance();
		    
		    con = DriverManager.getConnection(
		            "jdbc:mysql://localhost:3306/ateneav2?"
		            + "user=root&password=");

		} catch (Exception e) {

		    System.out.println(e.toString());

		}
	}
	
}

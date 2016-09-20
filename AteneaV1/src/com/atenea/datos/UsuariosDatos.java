package com.atenea.datos;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.ateanea.entidades.CompetenciaEntidad;
import com.ateanea.entidades.UsuarioEntidad;

public class UsuariosDatos {
	
	Conexion c;

	public UsuariosDatos(){
		c = new Conexion();
	}
	
	public void guardarUsuario(UsuarioEntidad ue){
		c.conectar();
		
		try {
			PreparedStatement ps =  c.con.prepareStatement("insert into usuario(usuario,password, roll) values(?,?,?)");
			ps.setString(1, ue.getUser());
			ps.setString(2, ue.getPassword());
			ps.setString(3, ue.getRoll());		
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	public String loginUsuario(UsuarioEntidad usuario){
		c.conectar();
		try {
			PreparedStatement cmd = c.con.prepareStatement("select roll from usuario where usuario = ? and password = ?");
			cmd.setString(1, usuario.getUser());
			cmd.setString(2, usuario.getPassword());
			ResultSet rs = cmd.executeQuery();
			String roll = null;
			while (rs.next()) {
				roll = rs.getString("roll");
			}
			c.con.close();
			return roll;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}


}

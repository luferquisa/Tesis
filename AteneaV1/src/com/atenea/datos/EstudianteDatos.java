package com.atenea.datos;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import com.ateanea.entidades.CompetenciaEntidad;
import com.ateanea.entidades.EstudiantesEntidad;

public class EstudianteDatos {
	
	Conexion c;

	public EstudianteDatos(){
		c = new Conexion();
	}

	public boolean registrarEstudiante(EstudiantesEntidad ee){
		System.out.println("guardo en guardar ");
		c.conectar();
			try {
				PreparedStatement ps =  c.con.prepareStatement("insert into estudiantes(nombre, correo, genero, fecha_nacimiento, lugar_nacimiento, estrato, composicion_familiar,colegio_nombre, colegio_grado,trabaja,hijos, direccion_residencia, grupo_programacion,repitente, numero_repitente ) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
				ps.setString(1, ee.getNombre());
				ps.setString(2, ee.getCorreo());
				ps.setString(3, ee.getGenero());
				ps.setDate(4, new java.sql.Date(ee.getFecha_nacimiento().getTime()));
				ps.setString(5, ee.getLugar_nacimiento());
				ps.setString(6, ee.getEstato());
				ps.setString(7, ee.getComposicion_familiar());
				ps.setString(8, ee.getColegio_nombre());
				ps.setString(9, ee.getColegio_grado());
				ps.setBoolean(10, ee.isTrabaja());
				ps.setBoolean(11, ee.isHijos());
				ps.setString(12, ee.getDireccion());
				ps.setString(13, ee.getGrupoProgramacion());
				ps.setBoolean(14, ee.isRepitente());
				ps.setInt(15, ee.getNumeroRepitente());
				ps.executeUpdate();
				return true;
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return false;
			}		
	}
}

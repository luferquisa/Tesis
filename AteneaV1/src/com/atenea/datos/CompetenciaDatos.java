package com.atenea.datos;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.ateanea.entidades.CompetenciaEntidad;
import com.ateanea.entidades.PreguntasEntidad;

public class CompetenciaDatos {
	
	Conexion c;

	public CompetenciaDatos(){
		c = new Conexion();
	}
	
	public List<CompetenciaEntidad> consultarCompetencias(){
		c.conectar();
		List<CompetenciaEntidad> listaentidad = new ArrayList<CompetenciaEntidad>();
		try {
			Statement cmd = c.con.createStatement();
			ResultSet rs = cmd.executeQuery("select * from competencias");
			while (rs.next()) {
				CompetenciaEntidad ce = new CompetenciaEntidad();
				
				ce.setId(rs.getInt("id"));
				ce.setCompetencia(rs.getString("competencia"));
				ce.setDescripcion(rs.getString("descripcion"));
				listaentidad.add(ce);
			}
			c.con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listaentidad;
	}
	
	public void guardarCompentencia(CompetenciaEntidad ce){
		c.conectar();
			try {
				PreparedStatement ps =  c.con.prepareStatement("insert into competencias(competencia, descripcion) values(?,?)");
				ps.setString(1,ce.getCompetencia());
				ps.setString(2, ce.getDescripcion());
				ps.executeUpdate();
				Statement  st = c.con.prepareStatement("select last_insert_id() from preguntas");
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}		
	}
}

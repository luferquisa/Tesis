package com.atenea.datos;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.ateanea.entidades.CompetenciaEntidad;
import com.ateanea.entidades.TareaEntidad;

public class TareaDatos {
	
	Conexion c;

	public TareaDatos(){
		c = new Conexion();
	}
	
	public TareaEntidad verTarea(int tarea){
		c.conectar();
		TareaEntidad te = new TareaEntidad();
		PreparedStatement cmd;
		try {
			cmd = c.con.prepareStatement("select * from tareas where id = ?");
			cmd.setInt(1, tarea);
			ResultSet rs = cmd.executeQuery();
			while (rs.next()) {
				te.setId(tarea);
				te.setCompetencia(rs.getInt("competencia"));
				te.setTexto(rs.getString("texto"));
				te.setTitulo(rs.getString("titulo"));
			}
			c.con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return te;
		
	}
	
	public List<TareaEntidad> listaTarea(int competencia){
		c.conectar();
		List<TareaEntidad> listaentidad = new ArrayList<TareaEntidad>();
		try {
			
			PreparedStatement  cmd = c.con.prepareStatement("select * from tareas where competencia = ?");
			cmd.setInt(1, competencia);
			ResultSet rs = cmd.executeQuery();
			while (rs.next()) {
				TareaEntidad ce = new TareaEntidad();
				
				ce.setId(rs.getInt("id"));
				ce.setTitulo(rs.getString("titulo"));
				ce.setTexto(rs.getString("texto"));
				ce.setCompetencia(rs.getInt("competencia"));
				listaentidad.add(ce);
			}
			c.con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listaentidad;
	}
	
	
	public void guardarTarea(TareaEntidad t){
		c.conectar();
			try {
				Statement cmd = c.con.createStatement();
				PreparedStatement ps =  c.con.prepareStatement("insert into tareas(titulo,texto, competencia) values(?,?,?)");
				ps.setString(1, t.getTitulo());
				ps.setString(2, t.getTexto());
			
				ps.setInt(3, t.getCompetencia());
				ps.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
	}
	
	public void editarTarea(TareaEntidad t){
		System.out.println("esta editando"+t.getId());
		c.conectar();
		try {
			Statement cmd = c.con.createStatement();
			PreparedStatement ps =  c.con.prepareStatement("update tareas set titulo = ? ,texto = ?, competencia = ? where id = ?");
			ps.setString(1, t.getTitulo());
			ps.setString(2, t.getTexto());
		
			ps.setInt(3, t.getCompetencia());
			ps.setInt(4, t.getId());
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}

package com.atenea.datos;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.ateanea.entidades.CompetenciaEntidad;
import com.ateanea.entidades.PreguntasEntidad;
import com.ateanea.entidades.PreguntasEntidad.Respuestas;
import com.ateanea.entidades.TareaEntidad;

public class PreguntasDatos {

	Conexion c;

	public PreguntasDatos(){
		c = new Conexion();
	}
	
	public List<PreguntasEntidad> consultarPreguntas(int tarea){
		c.conectar();
		List<PreguntasEntidad> listaentidad = new ArrayList<PreguntasEntidad>();
		try {
			PreparedStatement  cmd = c.con.prepareStatement("select * from preguntas where tarea = ?");
			cmd.setInt(1, tarea);
			ResultSet rs = cmd.executeQuery();
			while (rs.next()) {
				PreguntasEntidad ce = new PreguntasEntidad();
//				PreparedStatement  p = c.con.prepareStatement("select * from respuestas where pregunta = ?");
				
				ce.setId(rs.getInt("id"));

//				p.setInt(1, ce.getId());
				ce.setPregunta(rs.getString("pregunta"));
				ce.setTarea(rs.getInt("tarea"));
				ce.setA(rs.getString("a"));
				ce.setB(rs.getString("b"));
				ce.setC(rs.getString("c"));
				ce.setD(rs.getString("d"));
				ce.setCorrecta(rs.getString("correcta"));
				ce.setPuntaje(rs.getInt("puntaje"));
//				ResultSet ps = cmd.executeQuery();
//				while(ps.next()){
//					System.out.println("respuestas asdf");
//					int id = ps.getInt("id");
//					String respuesta = ps.getString("respuesta");
//					String numeral = ps.getString("numeral");
//					int pregunta = ps.getInt("pregunta");
//					int puntaje = ps.getInt("puntaje");
//					switch (numeral) {
//					case "a":
//						System.out.println("es la a");
//						ce.setRespuestaA(id, respuesta, numeral, pregunta, puntaje);
//						break;
//
//					default:
//						break;
//					}
//				}
				listaentidad.add(ce);
			}
			c.con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listaentidad;
	}
	
	public void guardarPregunta(PreguntasEntidad p){
		c.conectar();
			try {
				PreparedStatement ps =  c.con.prepareStatement("insert into preguntas(pregunta, tarea, a, b, c, d, puntaje, correcta) values(?,?,?,?,?,?,?,?)");
				System.out.print(p.getTarea()+" no se si hay ");
				ps.setString(1, p.getPregunta());
				ps.setInt(2, p.getTarea());
				ps.setString(3, p.getA());
				ps.setString(4, p.getB());
				ps.setString(5, p.getC());
				ps.setString(6, p.getD());
				ps.setInt(7, p.getPuntaje());
				ps.setString(8, p.getCorrecta());
			
				ps.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}		
	}
	
	public void guardarRespuesta( Respuestas r){
		c.conectar();
		try {
			PreparedStatement ps =  c.con.prepareStatement("insert into respuestas(respuesta, numeral,  pregunta, puntaje) values(?,?,?,?)");
			
			ps.setString(1, r.getRespuesta());
			ps.setString(2, r.getNumeral());
			ps.setInt(3, r.getPregunta());
			ps.setInt(4, r.getPuntaje());
		
			ps.executeUpdate();
			Statement  st = c.con.prepareStatement("select last_insert_id() from preguntas");
			ResultSet rs = st.executeQuery("select last_insert_id() from preguntas");
			int lastid = rs.getInt("last_insert_id()");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}

	
}

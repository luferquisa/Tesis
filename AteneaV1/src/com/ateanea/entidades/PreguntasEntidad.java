package com.ateanea.entidades;

public class PreguntasEntidad {
	
	private int id;
	private String pregunta;
	private int tarea;
	private String a;
	private String b;
	private String c;
	private String d;
	private String correcta;
	private int puntaje;
	private Respuestas ra;
	private Respuestas rb;
	private Respuestas rc;
	private Respuestas rd;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPregunta() {
		return pregunta;
	}
	public void setPregunta(String pregunta) {
		this.pregunta = pregunta;
	}
	public int getTarea() {
		return tarea;
	}
	public void setTarea(int tarea) {
		this.tarea = tarea;
	}
	
	public void setRespuestaA(int id, String respuesta, String numeral, int pregunta, int puntaje){
		ra = new Respuestas();
		ra.setId(this.id);
		ra.setRespuesta(respuesta);
		ra.setNumeral(numeral);
		ra.setPregunta(pregunta);
		ra.setPuntaje(puntaje);
	}
	
	public Respuestas getRespuestaA(){
		return this.ra;
	}
	
	public void setRespuestaB(int id, String respuesta, String numeral, int pregunta, int puntaje){
		rb = new Respuestas();
		rb.setId(this.id);
		rb.setRespuesta(respuesta);
		rb.setNumeral(numeral);
		rb.setPregunta(pregunta);
		rb.setPuntaje(puntaje);
	}
	
	public Respuestas getRespuestaB(){
		return this.rb;
	}
	
	public void setRespuestaC(int id, String respuesta, String numeral, int pregunta, int puntaje){
		rc = new Respuestas();
		rc.setId(this.id);
		rc.setRespuesta(respuesta);
		rc.setNumeral(numeral);
		rc.setPregunta(pregunta);
		rc.setPuntaje(puntaje);
	}
	
	public Respuestas getRespuestaC(){
		return this.rc;
	}
	
	public void setRespuestaD(int id, String respuesta, String numeral, int pregunta, int puntaje){
		rd = new Respuestas();
		rd.setId(this.id);
		rd.setRespuesta(respuesta);
		rd.setNumeral(numeral);
		rd.setPregunta(pregunta);
		rd.setPuntaje(puntaje);
	}
	
	public Respuestas getRespuestaD(){
		return this.rd;
	}
	
	public class Respuestas{
		
		private int id;
		private String respuesta;
		private String numeral;
		private int pregunta;
		private int puntaje;
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getRespuesta() {
			return respuesta;
		}
		public void setRespuesta(String respuesta) {
			this.respuesta = respuesta;
		}
		public String getNumeral() {
			return numeral;
		}
		public void setNumeral(String numeral) {
			this.numeral = numeral;
		}
		public int getPregunta() {
			return pregunta;
		}
		public void setPregunta(int pregunta) {
			this.pregunta = pregunta;
		}
		public int getPuntaje() {
			return puntaje;
		}
		public void setPuntaje(int puntaje) {
			this.puntaje = puntaje;
		}
	}

	public String getA() {
		return a;
	}
	public void setA(String a) {
		this.a = a;
	}
	public String getB() {
		return b;
	}
	public void setB(String b) {
		this.b = b;
	}
	public String getC() {
		return c;
	}
	public void setC(String c) {
		this.c = c;
	}
	public String getD() {
		return d;
	}
	public void setD(String d) {
		this.d = d;
	}
	public String getCorrecta() {
		return correcta;
	}
	public void setCorrecta(String correcta) {
		this.correcta = correcta;
	}
	public int getPuntaje() {
		return puntaje;
	}
	public void setPuntaje(int puntaje) {
		this.puntaje = puntaje;
	}
	
	
	

}

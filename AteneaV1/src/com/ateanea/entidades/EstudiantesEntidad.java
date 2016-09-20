package com.ateanea.entidades;

import java.util.Date;

public class EstudiantesEntidad {
	
	private int id;
	private String nombre;
	private String correo;
	private String genero;
	private Date fecha_nacimiento;
	private String lugar_nacimiento;
	private String estato;
	private String composicion_familiar;
	private String colegio_nombre;
	private String colegio_grado;
	private boolean trabaja;
	private boolean hijos;
	private String direccion;
	private String grupoProgramacion;
	private boolean repitente;
	private int numeroRepitente;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getCorreo() {
		return correo;
	}
	public void setCorreo(String correo) {
		this.correo = correo;
	}
	public String getGenero() {
		return genero;
	}
	public void setGenero(String genero) {
		this.genero = genero;
	}
	public Date getFecha_nacimiento() {
		return fecha_nacimiento;
	}
	public void setFecha_nacimiento(Date fecha_nacimiento) {
		this.fecha_nacimiento = fecha_nacimiento;
	}
	public String getLugar_nacimiento() {
		return lugar_nacimiento;
	}
	public void setLugar_nacimiento(String lugar_nacimiento) {
		this.lugar_nacimiento = lugar_nacimiento;
	}
	public String getEstato() {
		return estato;
	}
	public void setEstato(String estato) {
		this.estato = estato;
	}
	public String getComposicion_familiar() {
		return composicion_familiar;
	}
	public void setComposicion_familiar(String composicion_familiar) {
		this.composicion_familiar = composicion_familiar;
	}
	public String getColegio_grado() {
		return colegio_grado;
	}
	public void setColegio_grado(String colegio_grado) {
		this.colegio_grado = colegio_grado;
	}
	public boolean isTrabaja() {
		return trabaja;
	}
	public void setTrabaja(boolean trabaja) {
		this.trabaja = trabaja;
	}
	public boolean isHijos() {
		return hijos;
	}
	public void setHijos(boolean hijos) {
		this.hijos = hijos;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public String getColegio_nombre() {
		return colegio_nombre;
	}
	public void setColegio_nombre(String colegio_nombre) {
		this.colegio_nombre = colegio_nombre;
	}
	public String getGrupoProgramacion() {
		return grupoProgramacion;
	}
	public void setGrupoProgramacion(String grupoProgramacion) {
		this.grupoProgramacion = grupoProgramacion;
	}
	public boolean isRepitente() {
		return repitente;
	}
	public void setRepitente(boolean repitente) {
		this.repitente = repitente;
	}
	public int getNumeroRepitente() {
		return numeroRepitente;
	}
	public void setNumeroRepitente(int numeroRepitente) {
		this.numeroRepitente = numeroRepitente;
	}
	
	
	
}

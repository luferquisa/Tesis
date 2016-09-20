package com.atenea.controladores;

import java.util.Map;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;

import com.ateanea.entidades.EstudiantesEntidad;
import com.ateanea.entidades.UsuarioEntidad;
import com.atenea.datos.EstudianteDatos;
import com.atenea.datos.TareaDatos;
import com.atenea.datos.UsuariosDatos;


@ViewScoped
@ManagedBean(name="estudiante")
public class EstudiantesControlador {
	
	private EstudiantesEntidad ee;
	private UsuarioEntidad ue;
	
	@PostConstruct
	public void cargar(){
		this.ee = new EstudiantesEntidad();
		this.ue = new UsuarioEntidad();
	}
	
	
	
	public String registrarEstudiante(){
		System.out.println(ee.getComposicion_familiar()+" fecha");
		EstudianteDatos ed = new EstudianteDatos();   
		if(ed.registrarEstudiante(ee)){
			ue.setUser(ee.getCorreo());
			ue.setRoll("Estudiante");
			UsuariosDatos ud = new UsuariosDatos();
			ud.guardarUsuario(ue);
			return "index";
		}
		return "";
	}

	public EstudiantesEntidad getEe() {
		return ee;
	}

	public void setEe(EstudiantesEntidad ee) {
		this.ee = ee;
	}

	public UsuarioEntidad getUe() {
		return ue;
	}

	public void setUe(UsuarioEntidad ue) {
		this.ue = ue;
	}
	
	

}

package com.atenea.controladores;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

import com.ateanea.entidades.UsuarioEntidad;
import com.atenea.datos.UsuariosDatos;


@ViewScoped
@ManagedBean(name="login")
public class LoginControlador {
	
	private UsuarioEntidad usuario;
	UsuariosDatos ud;
	@PostConstruct
	public void inicio(){
		usuario = new UsuarioEntidad();
	}
	
	public String login(){
		System.out.println("login"+usuario.getPassword()+" "+usuario.getUser());
		ud = new UsuariosDatos();
		String roll = ud.loginUsuario(usuario);
		if(roll != null){
			if(roll.equals("Estudiante")){
				System.out.println("es estuddiante");
				return "responderPrueba";
			}
			else if(roll.equals("Profesor")){
				System.out.println("es profesor");
				return "listaCompetencias";
			}
			else{
				return "index";
			}
		}
		else{
			return "index";
		}
		
	}

	public UsuarioEntidad getUsuario() {
		return usuario;
	}

	public void setUsuario(UsuarioEntidad usuario) {
		this.usuario = usuario;
	}
	
	

}

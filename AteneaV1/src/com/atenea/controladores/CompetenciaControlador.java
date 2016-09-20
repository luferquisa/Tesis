package com.atenea.controladores;

import java.util.Map;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;

import com.ateanea.entidades.CompetenciaEntidad;
import com.atenea.datos.CompetenciaDatos;
import com.atenea.datos.TareaDatos;


@ViewScoped
@ManagedBean(name="competenciacon")
public class CompetenciaControlador {
	
	private CompetenciaEntidad ce;
	
	@PostConstruct
	public void iniciar(){
		System.out.println("carga ni modo");   
		ce = new CompetenciaEntidad();
	}

	public CompetenciaEntidad getCe() {
		return ce;
	}

	public void setCe(CompetenciaEntidad ce) {
		this.ce = ce;
	}
	
	public void guardarCompetencia(){
		CompetenciaDatos cd = new CompetenciaDatos();
		cd.guardarCompentencia(ce);
		System.out.println("guardar competencia "+ce.getCompetencia());
	}
	
}

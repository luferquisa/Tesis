package com.atenea.controladores;

import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;

import com.ateanea.entidades.TareaEntidad;
import com.atenea.datos.TareaDatos;


@ViewScoped
@ManagedBean(name="listatarea")
public class ListaTareasControlador {
	
	private List<TareaEntidad> listatareas;
	
	public TareaDatos td;
	
	
	@PostConstruct
	public void cargar(){
		System.out.println("carga ni modo");   
		td = new TareaDatos();
		FacesContext fc = FacesContext.getCurrentInstance();
		Map<String,String> params = fc.getExternalContext().getRequestParameterMap();
		
		int competencia = Integer.parseInt(params.get("competencia"));
		listatareas = td.listaTarea(competencia);
	}


	public List<TareaEntidad> getListatareas() {
		return listatareas;
	}


	public void setListatareas(List<TareaEntidad> listatareas) {
		this.listatareas = listatareas;
	}
	
	
	
}

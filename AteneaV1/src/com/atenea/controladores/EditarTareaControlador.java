package com.atenea.controladores;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;
import javax.faces.model.SelectItem;
import javax.faces.model.SelectItemGroup;

import com.ateanea.entidades.CompetenciaEntidad;
import com.ateanea.entidades.TareaEntidad;
import com.atenea.datos.CompetenciaDatos;
import com.atenea.datos.TareaDatos;

@ViewScoped
@ManagedBean(name="editartarea")
public class EditarTareaControlador {
	
	private TareaEntidad tarea;
	
	List<CompetenciaEntidad> competencias;
	List<TareaEntidad> tareas;
	private String titu;
	
	private int idTarea;
	
	
	@PostConstruct
	public void cargar(){
		this.tarea = new TareaEntidad();
		CompetenciaDatos cd = new CompetenciaDatos();
		this.competencias =  cd.consultarCompetencias();
		FacesContext fc = FacesContext.getCurrentInstance();
		Map<String,String> params = fc.getExternalContext().getRequestParameterMap();
		this.idTarea = Integer.parseInt(params.get("tarea"));
		TareaDatos td = new TareaDatos();
		this.tarea = td.verTarea(this.idTarea);
	}
	
	public void actualizarTarea(){
//		System.out.println(this.tarea.getTexto()+" titulo "+this.tarea.getTitulo());
		System.out.println("hola"+this.tarea.getTitulo()+this.tarea.getCompetencia());
		TareaDatos td = new TareaDatos();
		td.editarTarea(this.tarea);
	}

	public TareaEntidad getTarea() {
		return tarea;
	}

	public void setTarea(TareaEntidad tarea) {
		this.tarea = tarea;
	}

	public List<CompetenciaEntidad> getCompetencias() {
		return competencias;
	}

	public void setCompetencias(List<CompetenciaEntidad> competencias) {
		this.competencias = competencias;
	}

	public String getTitu() {
		return titu;
	}

	public void setTitu(String titu) {
		this.titu = titu;
	}

	public List<TareaEntidad> getTareas() {
		return tareas;
	}

	public void setTareas(List<TareaEntidad> tareas) {
		this.tareas = tareas;
	}

	public int getIdTarea() {
		return idTarea;
	}

	public void setIdTarea(int idTarea) {
		this.idTarea = idTarea;
	}
	
	
	
	
}

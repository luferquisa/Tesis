package com.atenea.controladores;

import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

import com.ateanea.entidades.CompetenciaEntidad;
import com.ateanea.entidades.TareaEntidad;
import com.atenea.datos.CompetenciaDatos;
import com.atenea.datos.TareaDatos;

@ViewScoped
@ManagedBean(name="tarea")
public class TareaControlador {
	
	private TareaEntidad tarea;
	
	List<CompetenciaEntidad> competencias;
	List<TareaEntidad> tareas;
	private String titu;
	private String posicionMenu;
	
//	Carrera 13 D N 31 g - 04 sur gustavo restrepo
	
	@PostConstruct
	public void cargar(){  
		this.tarea = new TareaEntidad();
		CompetenciaDatos cd = new CompetenciaDatos();
		this.competencias =  cd.consultarCompetencias();
//		SelectItemGroup g1 = new SelectItemGroup("Competencias");
//		SelectItem[] si = new SelectItem[competencias.size()];
//		int i=0;
//		for(CompetenciaEntidad c : competencias){
//			si[i] = new SelectItem(c.getId()+"",c.getCompetencia());
//			i++;
//		}
//        g1.setSelectItems(si);
//        this.competencias = new ArrayList<SelectItem>();
//        this.competencias.add(g1);
	}
	
	public void guardarTarea(){
//		System.out.println(this.tarea.getTexto()+" titulo "+this.tarea.getTitulo());
		System.out.println("hola"+this.tarea.getTitulo()+this.tarea.getCompetencia());
		TareaDatos td = new TareaDatos();
		td.guardarTarea(this.tarea);
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

	public String getPosicionMenu() {

		this.posicionMenu ="Hola mundo";
		return posicionMenu;
	}

	public void setPosicionMenu(String posicionMenu) {
		this.posicionMenu = posicionMenu;
	}
	
	
	
}

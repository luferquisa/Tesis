package com.atenea.controladores;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

import com.ateanea.entidades.CompetenciaEntidad;
import com.ateanea.entidades.PreguntasEntidad;
import com.ateanea.entidades.TareaEntidad;
import com.atenea.datos.CompetenciaDatos;
import com.atenea.datos.PreguntasDatos;
import com.atenea.datos.TareaDatos;
import org.primefaces.context.RequestContext;

@ViewScoped
@ManagedBean(name="prueba")
public class PruebaControlador {

	private List<CompetenciaEntidad> competencias;
	private List<TareaEntidad> tareas;
	private List<PreguntasEntidad> preguntas;
	private PreguntasEntidad preguntasel;
	private CompetenciaDatos cd;
	private TareaDatos td;
	private PreguntasDatos pd;
	private int compe;
	
	@PostConstruct
	public void iniciar(){
		competencias = new ArrayList<CompetenciaEntidad>();
		cd = new CompetenciaDatos();
		competencias = cd.consultarCompetencias();
		tareas = new ArrayList<TareaEntidad>();
		td = new TareaDatos();
		preguntas = new ArrayList<PreguntasEntidad>();
		pd = new PreguntasDatos();
		preguntasel = new PreguntasEntidad();

		tareas = td.listaTarea(1);
	}
	
	public void tareasCompetencia(){
		System.out.println("llena tareas");
		tareas = td.listaTarea(this.compe);
	}
	
	public List<PreguntasEntidad> preguntasTarea(int tarea) {
		return pd.consultarPreguntas(tarea);
	}

	public List<PreguntasEntidad> getPreguntas(int tarea) {
		return pd.consultarPreguntas(tarea);
	}

	public void setPreguntas(List<PreguntasEntidad> preguntas) {
		this.preguntas = preguntas;
	}

	public List<CompetenciaEntidad> getCompetencias() {
		return competencias;
	}

	public void setCompetencias(List<CompetenciaEntidad> competencias) {
		this.competencias = competencias;
	}

	public int getCompe() {
		return compe;
	}

	public void setCompe(int compe) {
		this.compe = compe;
	}

	public List<TareaEntidad> getTareas() {
		return tareas;
	}

	public void setTareas(List<TareaEntidad> tareas) {
		this.tareas = tareas;
	}

	public PreguntasEntidad getPreguntasel() {
		return preguntasel;
	}

	public void setPreguntasel(PreguntasEntidad preguntasel) {
		this.preguntasel = preguntasel;
	}
	
	public void probando(){
		log("llega llega");
	}
	
	
	public void log(String log){
		RequestContext requestContext = RequestContext.getCurrentInstance();
        requestContext.execute("console.log('"+log+"')");
		System.out.println(log);
		
	}
}

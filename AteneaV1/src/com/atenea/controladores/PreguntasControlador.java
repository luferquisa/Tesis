package com.atenea.controladores;

import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;

import com.ateanea.entidades.PreguntasEntidad;
import com.ateanea.entidades.TareaEntidad;
import com.atenea.datos.PreguntasDatos;
import com.atenea.datos.TareaDatos;


@ViewScoped
@ManagedBean(name="pregunta")
public class PreguntasControlador {
	
	private int tareaid;
	
	private PreguntasDatos pd;
	private TareaDatos td;
	private TareaEntidad te;
	private PreguntasEntidad pe;
	private PreguntasEntidad pee;
	
	List<PreguntasEntidad> listapreguntas;
	
	@PostConstruct
	public void cargar(){
		pe = new PreguntasEntidad();
		System.out.println("esta aqui");
		pd = new PreguntasDatos();
		td = new TareaDatos();
		FacesContext fc = FacesContext.getCurrentInstance();
		Map<String,String> params = fc.getExternalContext().getRequestParameterMap();
		
		this.tareaid = Integer.parseInt(params.get("tarea"));
		listapreguntas = pd.consultarPreguntas(this.tareaid);
		te = td.verTarea(this.tareaid);
	}

	public void guardarPregunta(){
		System.out.println("En guardar");
		System.out.println(pe.getA()+" "+pe.getCorrecta());
		pe.setTarea(this.tareaid);
		pd.guardarPregunta(pe);
	}
	
	public TareaEntidad getTe() {
		return te;
	}

	public void setTe(TareaEntidad te) {
		this.te = te;
	}

	public List<PreguntasEntidad> getListapreguntas() {
		return listapreguntas;
	}

	public void setListapreguntas(List<PreguntasEntidad> listapreguntas) {
		this.listapreguntas = listapreguntas;
	}

	public PreguntasEntidad getPe() {
		return pe;
	}

	public void setPe(PreguntasEntidad pe) {
		this.pe = pe;
	}

	public int getTareaid() {
		return tareaid;
	}

	public void setTareaid(int tareaid) {
		this.tareaid = tareaid;
	}

	public PreguntasDatos getPd() {
		return pd;
	}

	public void setPd(PreguntasDatos pd) {
		this.pd = pd;
	}

	public TareaDatos getTd() {
		return td;
	}

	public void setTd(TareaDatos td) {
		this.td = td;
	}

	public PreguntasEntidad getPee() {
		return pee;
	}

	public void setPee(PreguntasEntidad pee) {
		System.out.println("esty aqui"+pee.getCorrecta());
		this.pee = pee;
	}

	
	
	
}

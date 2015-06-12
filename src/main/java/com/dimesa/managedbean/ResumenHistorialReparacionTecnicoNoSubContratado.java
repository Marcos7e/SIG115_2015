/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dimesa.managedbean;

import com.dimesa.managedbean.generic.GenericManagedBean;
import com.dimesa.model.CostoEquipo;
import com.dimesa.model.Empleado;
import com.dimesa.model.Evento;
import com.dimesa.service.CostoEquipoService;
import com.dimesa.service.EmpleadoService;
import com.dimesa.service.EquipoService;
import com.dimesa.service.EventoService;
import com.dimesa.service.generic.GenericService;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.inject.Named;
import org.primefaces.model.LazyDataModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.web.context.WebApplicationContext;
import java.io.Serializable;

/**
 *
 * @author RAUL
 */
@Named("ResumenHistorialReparacionTecnicoNoSubContratado")
@Scope(WebApplicationContext.SCOPE_SESSION)
public class ResumenHistorialReparacionTecnicoNoSubContratado extends GenericManagedBean<Evento,Integer> implements Serializable {
    
    @Autowired
    @Qualifier(value = "costoEquipoService")
    private CostoEquipoService costoEquipoService;

    @Autowired
    @Qualifier(value = "eventoService")
    private EventoService eventoService;
    
    @Autowired
    @Qualifier(value = "empleadoService")
    private EmpleadoService empleadoService;
    
    private CostoEquipo costoEquipo;
    private Evento evento;
    private Empleado empleado;
    
    private Date dateServer = new Date();   
    private Date dateInicio = new Date();
    private Date dateFinal = new Date();
    SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
    private String fechaServer;
    private String fechaInicio;
    private String fechaFinal;

    /**
     * Creates a new instance of
     * ResumenHistorialReparacionTecnicoNoSubContratado
     */
    public ResumenHistorialReparacionTecnicoNoSubContratado() {
    }

    @Override
    public GenericService getService() {
       return eventoService;
    }

    @Override
    public LazyDataModel getNewLazyModel() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public CostoEquipoService getCostoEquipoService() {
        return costoEquipoService;
    }

    public void setCostoEquipoService(CostoEquipoService costoEquipoService) {
        this.costoEquipoService = costoEquipoService;
    }

    public EventoService getEventoService() {
        return eventoService;
    }

    public void setEventoService(EventoService eventoService) {
        this.eventoService = eventoService;
    }

    public EmpleadoService getEmpleadoService() {
        return empleadoService;
    }

    public void setEmpleadoService(EmpleadoService empleadoService) {
        this.empleadoService = empleadoService;
    }

    public CostoEquipo getCostoEquipo() {
        return costoEquipo;
    }

    public void setCostoEquipo(CostoEquipo costoEquipo) {
        this.costoEquipo = costoEquipo;
    }

    public Evento getEvento() {
        
        return evento;
    }

    public void setEvento(Evento evento) {
        this.evento = evento;
    }

    public Empleado getEmpleado() {
        return empleado;
    }

    public void setEmpleado(Empleado empleado) {
        this.empleado = empleado;
    }

    public Date getDateServer() {
        return dateServer;
    }

    public void setDateServer(Date dateServer) {
        this.dateServer = dateServer;
    }

    public String getFechaServer() {
        fechaServer = formatter.format(dateServer);
        return fechaServer;
    }

    public void setFechaServer(String fechaServer) {
        this.fechaServer = fechaServer;
    }

    public Date getDateInicio() {
        return dateInicio;
    }

    public void setDateInicio(Date dateInicio) {
        this.dateInicio = dateInicio;
    }

    public Date getDateFinal() {
        return dateFinal;
    }

    public void setDateFinal(Date dateFinal) {
        this.dateFinal = dateFinal;
    }

    public String getFechaInicio() {
        fechaInicio = formatter.format(dateInicio);
        return fechaInicio;
    }

    public void setFechaInicio(String fechaInicio) {
        this.fechaInicio = fechaInicio;
    }

    public String getFechaFinal() {
        fechaFinal = formatter.format(dateFinal);
        return fechaFinal;
    }

    public void setFechaFinal(String fechaFinal) {
        this.fechaFinal = fechaFinal;
    }
    
    
}

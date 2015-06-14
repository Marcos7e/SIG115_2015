/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dimesa.managedbean;

import com.dimesa.managedbean.generic.GenericManagedBean;
import com.dimesa.managedbean.lazymodel.ResumenHistorialReparacionTecnicoNoSubContratadoLazyModel;
import com.dimesa.model.CostoEquipo;
import com.dimesa.model.Empleado;
import com.dimesa.model.Equipo;
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
import java.util.ArrayList;
import java.util.List;
import javax.annotation.PostConstruct;

/**
 *
 * @author RAUL
 */
@Named("resumenHistorialReparacionTecnicoNoSubContratado")
@Scope(WebApplicationContext.SCOPE_SESSION)
public class ResumenHistorialReparacionTecnicoNoSubContratado extends GenericManagedBean<Equipo, Integer> {

    @Autowired
    @Qualifier(value = "equipoService")
    private EquipoService equipoService;

    @Autowired
    @Qualifier(value = "empleadoService")
    private EmpleadoService empleadoService;

    @Autowired
    @Qualifier(value = "eventoService")
    private EventoService eventoService;

    @Autowired
    @Qualifier(value = "costoEquipoService")
    private CostoEquipoService costoEquipoService;

    private List<Equipo> equipoList;
    private List<Empleado> empleadoList;
    private List<Evento> eventodoList;/*tipo de reporte*/

    private CostoEquipo costoEquipo;
    private Evento evento;
    private Empleado empleado;
    private Equipo equipo;
    private String equipox;
    private String tecnico;
    private String tiporeporte;
    private String fecha;

    private Date date1;
    private Date date2;

    private Date dateFinal = new Date();
    private SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");

    private String fechaFinal;

    @PostConstruct
    public void init() {
        equipoList = new ArrayList<Equipo>();
        empleadoList = new ArrayList<Empleado>();
        eventodoList = new ArrayList<Evento>();
        equipoList = equipoService.findAll();
        empleadoList = empleadoService.getTecnicosExterno();
        eventodoList = eventoService.findAll();
    }

    @Override
    public GenericService<Equipo, Integer> getService() {
        return equipoService;
    }

    @Override
    public LazyDataModel<Equipo> getNewLazyModel() {
        return new ResumenHistorialReparacionTecnicoNoSubContratadoLazyModel(equipoService);
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

    public Date getDateFinal() {
        return dateFinal;
    }

    public void setDateFinal(Date dateFinal) {
        this.dateFinal = dateFinal;
    }

    public String getFechaFinal() {
        fechaFinal = formatter.format(dateFinal);
        return fechaFinal;
    }

    public void setFechaFinal(String fechaFinal) {
        this.fechaFinal = fechaFinal;
    }

    public SimpleDateFormat getFormatter() {
        return formatter;
    }

    public void setFormatter(SimpleDateFormat formatter) {
        this.formatter = formatter;
    }

    public Date getDate1() {
        return date1;
    }

    public void setDate1(Date date1) {
        this.date1 = date1;
    }

    public Date getDate2() {
        return date2;
    }

    public void setDate2(Date date2) {
        this.date2 = date2;
    }

    public List<Equipo> getEquipoList() {
        return equipoList;
    }

    public void setEquipoList(List<Equipo> equipoList) {
        this.equipoList = equipoList;
    }

    public Equipo getEquipo() {
        return equipo;
    }

    public void setEquipo(Equipo equipo) {
        this.equipo = equipo;
    }

    public EquipoService getEquipoService() {
        return equipoService;
    }

    public void setEquipoService(EquipoService equipoService) {
        this.equipoService = equipoService;
    }

    public String getEquipox() {
        return equipox;
    }

    public void setEquipox(String equipox) {
        this.equipox = equipox;
    }

    public EmpleadoService getEmpleadoService() {
        return empleadoService;
    }

    public void setEmpleadoService(EmpleadoService empleadoService) {
        this.empleadoService = empleadoService;
    }

    public List<Empleado> getEmpleadoList() {
        return empleadoList;
    }

    public void setEmpleadoList(List<Empleado> empleadoList) {
        this.empleadoList = empleadoList;
    }

    public String getTecnico() {
        return tecnico;
    }

    public void setTecnico(String tecnico) {
        this.tecnico = tecnico;
    }

    public EventoService getEventoService() {
        return eventoService;
    }

    public void setEventoService(EventoService eventoService) {
        this.eventoService = eventoService;
    }

    public List<Evento> getEventodoList() {
        return eventodoList;
    }

    public void setEventodoList(List<Evento> eventodoList) {
        this.eventodoList = eventodoList;
    }

    public String getTiporeporte() {
        return tiporeporte;
    }

    public void setTiporeporte(String tiporeporte) {
        this.tiporeporte = tiporeporte;
    }

    public String getFecha() {
        fecha = formatter.format(dateFinal);
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

}

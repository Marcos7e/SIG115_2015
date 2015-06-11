/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dimesa.managedbean;

import com.dimesa.managedbean.generic.GenericManagedBean;
import com.dimesa.model.Evento;
import com.dimesa.service.EventoService;
import com.dimesa.service.generic.GenericService;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import javax.inject.Named;
import org.primefaces.context.RequestContext;
import org.primefaces.event.SelectEvent;
import org.primefaces.model.LazyDataModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.web.context.WebApplicationContext;


/**
 *
 * @author Marcos
 */
@Named("tasaExitoFalloReparacionesManagedBean")
@Scope(WebApplicationContext.SCOPE_SESSION)
public class TasaExitoFalloReparacionesManagedBean extends GenericManagedBean<Evento,Integer> {


    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    
    @Autowired
    @Qualifier(value = "eventoService")
    private EventoService eventoService;
    private Evento evento;
    private List<Evento> eventoList;
    
      @PostConstruct
    public void init() {
        eventoList = new ArrayList<Evento>();
        eventoList = eventoService.findAll();
    }
    
     @Override
    public GenericService<Evento, Integer> getService() {
        return eventoService;
    }

    @Override
    public LazyDataModel<Evento> getNewLazyModel() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
    
    private Date _fechaInicial;
    private Date _fechaFinal;
    private Date _serverFecha;
    private String _AreaHospitalaria;
    private String _fechaEmision;
    private String _nomReport;
    private String _usuario;
    
    
      public void error() {
        FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR, "Error!", "Contact admin."));
    }
    
    public void onDateSelect(SelectEvent event){
    FacesContext facesContext = FacesContext.getCurrentInstance();
    SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
    facesContext.addMessage(null, new FacesMessage(FacesMessage.SEVERITY_INFO, "Date Selected", format.format(event.getObject())));
    }
    
       public void click() {

        if (getFechaInicial()== null) {
            FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR, "Error!", "Fecha Inicial Vacia."));
        } else if (getFechaFinal()== null) {
            FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR, "Error!", "Fecha Fin Vacia."));
        } else if(getAreaHospitalaria()== null|| !getAreaHospitalaria().equals(""))
        {
            FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR,"Error!","Area Hospitalaria Vacia."));
        }
        
        else{
            
        //TODO With JasperReport....
        }

    }
    
           public String getUsuario() {
        return _usuario;
    }

    public void setUsuario(String _usuario) {
        this._usuario = _usuario;
    }

       
       
    public String getFechaEmision() {
        return _fechaEmision;
    }

    public void setFechaEmision(String _fechaEmision) {
        this._fechaEmision = _fechaEmision;
    }

    public String getNomReport() {
        return _nomReport;
    }

    public void setNomReport(String _nomReport) {
        this._nomReport = _nomReport;
    }
       
    public String getAreaHospitalaria() {
        return _AreaHospitalaria;
    }

    public void setAreaHospitalaria(String _AreaHospitalaria) {
        this._AreaHospitalaria = _AreaHospitalaria;
    }
    

    public Date getFechaInicial() {
        return _fechaInicial;
    }

    public void setFechaInicial(Date _fechaInicial) {
        this._fechaInicial = _fechaInicial;
    }

    public Date getFechaFinal() {
        return _fechaFinal;
    }

    public void setFechaFinal(Date _fechaFinal) {
        this._fechaFinal = _fechaFinal;
    }

    public Date getServerFecha() {
        return _serverFecha;
    }

    public void setServerFecha(Date _serverFecha) {
        this._serverFecha = _serverFecha;
    }

    
    
   ///////////////////////////////////////////////

   
    
    
    
    
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dimesa.managedbean;

import java.text.SimpleDateFormat;
import java.util.Date;
import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import javax.inject.Named;
import org.primefaces.context.RequestContext;
import org.primefaces.event.SelectEvent;
import org.springframework.context.annotation.Scope;
import org.springframework.web.context.WebApplicationContext;


/**
 *
 * @author Marcos
 */
@Named("tasaExitoFalloReparacionesManagedBean")
@Scope(WebApplicationContext.SCOPE_SESSION)
public class TasaExitoFalloReparacionesManagedBean {


 


    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    
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

    
    
   
    
    
    
    
    
}

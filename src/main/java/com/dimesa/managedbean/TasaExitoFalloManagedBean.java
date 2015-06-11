/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dimesa.managedbean;

import java.text.SimpleDateFormat;
import java.util.Date;
import javax.inject.Named;
import org.springframework.context.annotation.Scope;
import org.springframework.web.context.WebApplicationContext;

/**
 *
 * @author RAUL
 */
@Named("TasaExitoFalloManagedBean")
@Scope(WebApplicationContext.SCOPE_SESSION)
public class TasaExitoFalloManagedBean {

    /**
     * Creates a new instance of TasaExitoFalloManagedBean
     */
    
      private Date dateServer = new Date();
     private String fechaEmision;
    SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
    

    public String getFechaEmision() {
        fechaEmision = "Prueba ";
        return fechaEmision;
    }

    public void setFechaEmision(String fechaEmision) {
        this.fechaEmision = fechaEmision;
    }
    
}

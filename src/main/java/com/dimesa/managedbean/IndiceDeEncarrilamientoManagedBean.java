/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dimesa.managedbean;

import com.dimesa.jasper.Reporte;
import com.dimesa.managedbean.form.CurrentUserSessionForm;
import com.dimesa.pojo.rpt.RptIndiceDeEncarrilamiento;

import java.sql.Time;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Random;
import javax.faces.application.FacesMessage;
import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
import javax.inject.Named;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import net.sf.jasperreports.view.JasperViewer;
import org.primefaces.context.RequestContext;
import org.primefaces.event.SelectEvent;
import org.springframework.context.annotation.Scope;
import org.springframework.web.context.WebApplicationContext;

/**
 *
 * @author HDEZ
 */
@Named("indiceDeEncarrilamientoManagedBean")
@Scope(WebApplicationContext.SCOPE_SESSION)
public class IndiceDeEncarrilamientoManagedBean {

    private Date date1;
    private Date date2;
    private Date date3 = new Date();
    private boolean value1;
    private boolean value2;
    private boolean value3;
    private boolean value4;
    private String fecha;
    private String reportName;
    SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
    private int millisInDay = 24 * 60 * 60 * 1000;
    Random r = new Random();
    
    private CurrentUserSessionForm currentUserSessionForm;

    public void onDateSelect(SelectEvent event) {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        facesContext.addMessage(null, new FacesMessage(FacesMessage.SEVERITY_INFO, "Date Selected", formatter.format(event.getObject())));
    }

    public void click() {

        if (getDate1() == null) {
            FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR, "Error!", "Fecha Inicial Vacia."));
        } else if (getDate2() == null) {
            FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR, "Error!", "Fecha Fin Vacia."));
        } else if (getDate2().before(getDate1())) {
            FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR, "Error!", "Fecha Fin es Menor que Fecha Inicio."));
        } else {
            print();
        }

    }

    public void print() {
        ExternalContext context = FacesContext.getCurrentInstance().getExternalContext();
        List<RptIndiceDeEncarrilamiento> list = new ArrayList<RptIndiceDeEncarrilamiento>();
        RptIndiceDeEncarrilamiento prueba = new RptIndiceDeEncarrilamiento();
        
        
       
        
        for (int i = 0; i < 100; i++) {
            prueba = new RptIndiceDeEncarrilamiento();
            prueba.setArea("Area de prueba");
            prueba.setEquipo("Equipo" + i);
            prueba.setGastoDept(100 + (200 - 300) * r.nextDouble());
            prueba.setGastoRepa(100 + (200 - 300) * r.nextDouble());
            prueba.setTasaRep(100 + (200 - 300) * r.nextDouble());
            Time time = new Time((long) r.nextInt(millisInDay));
            prueba.setTiempoRe(time.toString());
            list.add(prueba);
        }
        HttpServletRequest request = (HttpServletRequest) context.getRequest();
        HttpServletResponse response = (HttpServletResponse) context.getResponse();
        Reporte reporte = new Reporte("indicedeencarrilamiento", "rpt_encarrilamiento", request);
        reporte.setDataSource(new JRBeanCollectionDataSource(new HashSet<RptIndiceDeEncarrilamiento>(list)));
        reporte.addParameter("fechaInicial", formatter.format(date1));
        reporte.addParameter("fechaFinal", formatter.format(date2));
        reporte.addParameter("usuario","usuario");
        reporte.setReportInSession(request, response);
        reportName = reporte.getNombreLogico();
        RequestContext.getCurrentInstance().addCallbackParam("reportName", reportName);
        JasperViewer.viewReport(reporte.getJasperPrint());/*quitar si funciona*/

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

    public boolean isValue1() {
        return value1;
    }

    public void setValue1(boolean value1) {
        this.value1 = value1;
    }

    public boolean isValue2() {
        return value2;
    }

    public void setValue2(boolean value2) {
        this.value2 = value2;
    }

    public boolean isValue3() {
        return value3;
    }

    public void setValue3(boolean value3) {
        this.value3 = value3;
    }

    public boolean isValue4() {
        return value4;
    }

    public void setValue4(boolean value4) {
        this.value4 = value4;
    }

    public Date getDate3() {
        return date3;
    }

    public void setDate3(Date date3) {
        this.date3 = date3;
    }

    public void error() {
        FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR, "Error!", "Contact admin."));
    }

    public String getFecha() {
        fecha = formatter.format(date3);
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getReportName() {
        return reportName;
    }

    public void setReportName(String reportName) {
        this.reportName = reportName;
    }

}

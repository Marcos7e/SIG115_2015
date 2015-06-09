/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dimesa.managedbean;

import com.dimesa.jasper.Reporte;
import com.dimesa.managedbean.generic.GenericManagedBean;
import com.dimesa.managedbean.lazymodel.IndicePromedioDeGastoReparacionEventoLazyModel;
import com.dimesa.model.Evento;
import com.dimesa.pojo.rpt.RptComparativoDeGastosReparacion;
import com.dimesa.service.EquipoService;
import com.dimesa.service.EventoService;
import com.dimesa.service.generic.GenericService;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.faces.application.FacesMessage;
import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
import javax.inject.Named;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import net.sf.jasperreports.view.JasperViewer;
import org.primefaces.context.RequestContext;
import org.primefaces.model.LazyDataModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.web.context.WebApplicationContext;

/**
 *
 * @author HDEZ
 */
@Named("gastoReparacionEquipoManagedBean")
@Scope(WebApplicationContext.SCOPE_SESSION)
public class IndicePromedioDeGastoReparacionEquipoManagedBean extends GenericManagedBean<Evento, Integer> {

    @Autowired
    @Qualifier(value = "equipoService")
    private EquipoService equipoService;

    @Autowired
    @Qualifier(value = "eventoService")
    private EventoService eventoService;

    private Evento evento;

    private List<Evento> eventoList;
    private Date date3 = new Date();
    private String fecha;
    private String area;
    private Date date1;
    private Date date2;
    private boolean value1;
     private String reportName;
    
    SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");

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
        return new IndicePromedioDeGastoReparacionEventoLazyModel(eventoService);
    }

    public void click() {

        if (getArea() == null || getArea().equals("")) {
            FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR, "Error!", "Seleccionar Area Hospitalaria"));
        } else if (getDate1() == null) {
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
        List<RptComparativoDeGastosReparacion> list = new ArrayList<RptComparativoDeGastosReparacion>();
        for (int i = 0; i < 100; i++) {
            RptComparativoDeGastosReparacion prueba = new RptComparativoDeGastosReparacion();
            prueba.setEquipox(12.2);
            prueba.setEquipoy(Double.NaN);
            list.add(prueba);
        }

        HttpServletRequest request = (HttpServletRequest) context.getRequest();
        HttpServletResponse response = (HttpServletResponse) context.getResponse();
        Reporte reporte = new Reporte("compgastosrep", "rpt_comparativo_gasto_reparaciones", request);

        reporte.setDataSource(new JRBeanCollectionDataSource(new HashSet<RptComparativoDeGastosReparacion>(list)));
        reporte.setReportInSession(request, response);
        reportName = reporte.getNombreLogico();

        JasperViewer.viewReport(reporte.getJasperPrint());/*quitar si funciona*/

        RequestContext.getCurrentInstance().addCallbackParam("reportName", reportName);
    }

    public Date getDate3() {
        return date3;
    }

    public void setDate3(Date date3) {
        this.date3 = date3;
    }

    public EquipoService getEquipoService() {
        return equipoService;
    }

    public void setEquipoService(EquipoService equipoService) {
        this.equipoService = equipoService;
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

    public String getFecha() {
        fecha = formatter.format(date3);
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public Evento getEvento() {
        return evento;
    }

    public void setEvento(Evento evento) {
        this.evento = evento;
    }

    public List<Evento> getEventoList() {
        return eventoList;
    }

    public void setEventoList(List<Evento> eventoList) {
        this.eventoList = eventoList;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getReportName() {
        return reportName;
    }

    public void setReportName(String reportName) {
        this.reportName = reportName;
    }

}

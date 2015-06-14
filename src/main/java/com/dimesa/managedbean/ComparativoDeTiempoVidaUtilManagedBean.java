/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dimesa.managedbean;

import com.dimesa.jasper.Reporte;
import com.dimesa.managedbean.generic.GenericManagedBean;
import com.dimesa.managedbean.lazymodel.IndicePromedioDeGastoReparacionEquipoLazyModel;
import com.dimesa.model.Equipo;
import com.dimesa.pojo.rpt.RptComparativoDeTiempoVidaUtil;
import com.dimesa.service.EquipoService;
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
@Named("comparativoDeTiempoVidaUtilManagedBean")
@Scope(WebApplicationContext.SCOPE_SESSION)
public class ComparativoDeTiempoVidaUtilManagedBean extends GenericManagedBean<Equipo, Integer> {

    @Autowired
    @Qualifier(value = "equipoService")
    private EquipoService equipoService;
    private Equipo equipo;

    private List<Equipo> equipoList;
    private Date date3 = new Date();
    SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
    private String fecha;
    private String equipox;
    private String equipoy;
    private boolean value1;
    private String reportName;

    @PostConstruct
    public void init() {
        equipoList = new ArrayList<Equipo>();
        equipoList = equipoService.findAll();
    }

    @Override
    public GenericService<Equipo, Integer> getService() {
        return equipoService;
    }

    @Override
    public LazyDataModel<Equipo> getNewLazyModel() {
        return new IndicePromedioDeGastoReparacionEquipoLazyModel(equipoService);
    }

    public void click() {

        if (getEquipox().equals(null) || getEquipox().equals("")) {
            FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR, "Error!", "Seleccione Equipo 1."));
        } else if (getEquipoy().equals(null) || getEquipoy().equals("")) {
            FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR, "Error!", "Seleccione Equipo 2."));
        } else if (getEquipox().toString().equals(getEquipoy().toString())) {
            FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_ERROR, "Error!", "Equipo 1 No Debe ser Igual a Equipo 2."));
        } else {
            print();
        }

    }

    public void print() {
        ExternalContext context = FacesContext.getCurrentInstance().getExternalContext();
        List<RptComparativoDeTiempoVidaUtil> list = new ArrayList<RptComparativoDeTiempoVidaUtil>();
        for (int i = 0; i < 100; i++) {
            RptComparativoDeTiempoVidaUtil prueba = new RptComparativoDeTiempoVidaUtil();
       //     prueba.setEquipox(12.2);
       //     prueba.setEquipoy(Double.NaN);
            list.add(prueba);
        }

        HttpServletRequest request = (HttpServletRequest) context.getRequest();
        HttpServletResponse response = (HttpServletResponse) context.getResponse();
        Reporte reporte = new Reporte("vidautil", "rpt_comparativo_vida_util", request);

        reporte.setDataSource(new JRBeanCollectionDataSource(new HashSet<RptComparativoDeTiempoVidaUtil>(list)));
        reporte.setReportInSession(request, response);
        reportName = reporte.getNombreLogico();

        RequestContext.getCurrentInstance().addCallbackParam("reportName", reportName);
    }

    public Date getDate3() {
        return date3;
    }

    public void setDate3(Date date3) {
        this.date3 = date3;
    }

    public List<Equipo> getEquipoList() {
        return equipoList;
    }

    public void setEquipoList(List<Equipo> equipoList) {
        this.equipoList = equipoList;
    }

    public EquipoService getEquipoService() {
        return equipoService;
    }

    public void setEquipoService(EquipoService equipoService) {
        this.equipoService = equipoService;
    }

    public Equipo getEquipo() {
        return equipo;
    }

    public void setEquipo(Equipo equipo) {
        this.equipo = equipo;
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

    public String getEquipox() {
        return equipox;
    }

    public void setEquipox(String equipox) {
        this.equipox = equipox;
    }

    public String getEquipoy() {
        return equipoy;
    }

    public void setEquipoy(String equipoy) {
        this.equipoy = equipoy;
    }

    public String getReportName() {
        return reportName;
    }

    public void setReportName(String reportName) {
        this.reportName = reportName;
    }
    

}

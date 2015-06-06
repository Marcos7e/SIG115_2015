/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dimesa.managedbean;

import com.dimesa.managedbean.generic.GenericManagedBean;
import com.dimesa.managedbean.lazymodel.IndicePromedioDeGastoReparacionEquipoLazyModel;
import com.dimesa.model.Equipo;
import com.dimesa.service.EquipoService;
import com.dimesa.service.generic.GenericService;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.inject.Named;
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
    private Date date1;
    private Date date2;
    private boolean value1;

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

    
}

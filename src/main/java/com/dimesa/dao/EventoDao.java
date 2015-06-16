/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dimesa.dao;

import com.dimesa.dao.generic.GenericDao;
import com.dimesa.model.Evento;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author HDEZ
 */
@Repository
public class EventoDao extends GenericDao<Evento, Integer> {
    
    SimpleDateFormat formStr = new SimpleDateFormat("yyyy-MM-dd");

    public List<Evento> getAllEventos() {
        Query q = getSessionFactory().getCurrentSession().createQuery(
                "SELECT * FROM EVENTO"
        );
        return q.list();
    }

    public List<String> getUnidades() {
        Query q = getSessionFactory().getCurrentSession().createQuery(
                "SELECT Unidad FROM Evento"
        );
        return q.list();
    }

    public List<Evento> getListadoEventoRFD(Date fechainicio, Date fechafin) {
        Query q = getSessionFactory().getCurrentSession().createQuery(
                "SELECT e FROM Evento e WHERE  e.servicio = 'REPARACION' OR e.servicio = 'FALLA' OR e.servicio = 'DEPRECIACION' BETWEEN e.fechainicio=: fechainicio and e.fechafin=:fechafin"
        );
        q.setParameter("fechainicio", fechainicio);
        q.setParameter("fechafin", fechafin);
        return q.list();
    }

    public List<Evento> getListadoExitoso(Date fechainicio, Date fechafin) {
        Query q = getSessionFactory().getCurrentSession().createQuery(
                "SELECT e FROM Evento e WHERE  e.servicio = 'REPARACION' and e.fechainicio=: fechainicio BETWEEN e.fechafin=:fechafin"
        );
        q.setParameter("fechainicio", fechainicio);
        q.setParameter("fechafin", fechafin);
        return q.list();
    }

    public List<Evento> getListadoDepreciacion(Date fechainicio, Date fechafin) {
        Query q = getSessionFactory().getCurrentSession().createQuery(
                "SELECT e FROM Evento e WHERE  e.servicio = 'DEPRECIACION' and e.fechainicio=: fechainicio BETWEEN e.fechafin=:fechafin"
        );
        q.setParameter("fechainicio", fechainicio);
        q.setParameter("fechafin", fechafin);
        return q.list();
    }

    public List<Evento> getListadoFallos(Date fechainicio, Date fechafin) {
        
        try {           
            Query q = getSessionFactory().getCurrentSession().createQuery(
                    "SELECT e FROM Evento e WHERE  e.servicio ='FALLA' AND e.fechainicio BETWEEN :fechainicio and :fechafin ORDER BY e.servicio"
            );
            q.setParameter("fechainicio", fechainicio);
            q.setParameter("fechafin", fechafin);
            return q.list();

        } catch (Exception e) {
            System.out.println("error " + e);
            return null;
        }
    }
    
    public List<Evento> getListadoFallosReparacion(Date fechainicio, Date fechafin) {
        
        try {           
            Query q = getSessionFactory().getCurrentSession().createQuery(
                    "SELECT e FROM Evento e WHERE  e.servicio ='FALLA' OR e.servicio ='REPARACION' AND e.fechainicio BETWEEN :fechainicio and :fechafin ORDER BY e.servicio"
            );
            q.setParameter("fechainicio", fechainicio);
            q.setParameter("fechafin", fechafin);
            return q.list();

        } catch (Exception e) {
            System.out.println("error " + e);
            return null;
        }
    }
    
       public List<Evento> getDepreciaciones(Date fechainicio, Date fechafin) {
        Query q = getSessionFactory().getCurrentSession().createQuery(
                "SELECT e FROM Evento e WHERE  e.servicio = 'DEPRECIACION' and e.fechainicio=: fechainicio BETWEEN e.fechafin=:fechafin"
        );
        q.setParameter("fechainicio", fechainicio);
        q.setParameter("fechafin", fechafin);
        return q.list();
    }
       
    public List<Evento> getTiempoVidaUtil(int idA, int idB) {
        Query q = getSessionFactory().getCurrentSession().createQuery(
                "SELECT e FROM Evento e WHERE  e.pladimesa = :idA OR e.pladimesa = :idB"
        );
         q.setParameter("idA", idA);
         q.setParameter("idB", idB);
       
        return q.list();
    }
           
}

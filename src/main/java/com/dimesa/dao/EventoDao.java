/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dimesa.dao;

import com.dimesa.dao.generic.GenericDao;
import com.dimesa.model.Evento;
import java.util.List;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

/**
 *
 * @author HDEZ
 */
@Repository
public class EventoDao extends GenericDao<Evento, Integer> {
    
    public List<Evento> getAllEventos(){
    Query q = getSessionFactory().getCurrentSession().createQuery(
    "SELECT * FROM EVENTO"
    );
        return q.list();
    }
    
    public List<String> getUnidades(){
    Query q = getSessionFactory().getCurrentSession().createQuery(
    "SELECT Unidad FROM Evento"
    );
    return q.list();
    }

    
}

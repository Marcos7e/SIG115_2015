/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dimesa.service;

import com.dimesa.dao.EventoDao;
import com.dimesa.dao.generic.GenericDao;
import com.dimesa.model.Evento;
import com.dimesa.service.generic.GenericService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author HDEZ
 */


@Service(value="eventoService")
public class EventoService extends GenericService<Evento, Integer>{

    @Autowired
    private EventoDao eventoDao;
    
    @Override
    public GenericDao<Evento, Integer> getDao() {
      return eventoDao;
    }
    
}

package com.asir.qatar.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.asir.qatar.bean.JugadoresBean;
import com.asir.qatar.dao.JugadoresDao;

@Service
public class JugadoresService {
    @Autowired
    private JugadoresDao dao;

    public List<JugadoresBean> obtenerJugadores() {
        return dao.obtenerJugadores();
    }
   
    public JugadoresBean ObtenerDatosJugador(int idJugador){
        return dao.datosJugador(idJugador);
    }

    public void modificarJugador(JugadoresBean datosJugador){
        dao.modificarJugador(datosJugador);
    }
    
    public void suprimirJugador(JugadoresBean datosJugador){
        dao.eliminarJugador(datosJugador);
    }

    public void agregarJugador(JugadoresBean datosJugador) {
        int id = dao.obtenerID();
        datosJugador.setIdJugador(id);
        dao.anadirJugador(datosJugador);
    }
}
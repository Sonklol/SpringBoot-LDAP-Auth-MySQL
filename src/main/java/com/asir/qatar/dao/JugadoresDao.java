package com.asir.qatar.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.asir.qatar.bean.JugadoresBean;

@Mapper
public interface JugadoresDao {
    
    List<JugadoresBean> obtenerJugadores();

    JugadoresBean datosJugador(int idJugador);

    void modificarJugador(JugadoresBean datosJugador);

    void eliminarJugador(JugadoresBean datosJugador);

    int obtenerID();

    void anadirJugador(JugadoresBean datosJugador);
}

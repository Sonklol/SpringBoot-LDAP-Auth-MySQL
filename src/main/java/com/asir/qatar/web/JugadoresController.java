package com.asir.qatar.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.asir.qatar.bean.JugadoresBean;
import com.asir.qatar.service.JugadoresService;

@Controller
public class JugadoresController {
    
    @Autowired
    private JugadoresService servicio;

    @RequestMapping(value="/listaJugadores", method = RequestMethod.GET)
    public String listadoJugadores(Model model) {
        List<JugadoresBean> listado = servicio.obtenerJugadores();
        model.addAttribute("attJugadores", listado);
        model.addAttribute("attIdJugador", new JugadoresBean());
        return "jugadores";
    }
    
    @PostMapping(value="verJugador")
    public String verJugador(Model model, @ModelAttribute("attIdJugador") JugadoresBean jugador){
        JugadoresBean datos = servicio.ObtenerDatosJugador(jugador.getIdJugador());
        model.addAttribute("attDatosJugador", datos);
        return "datosJugador";
    }

    @PostMapping(value="actualizarJugador")
    public String actualizarJugador(Model model, @ModelAttribute("attDatosJugador") JugadoresBean datosJugador){
        servicio.modificarJugador(datosJugador);
        List<JugadoresBean> listado = servicio.obtenerJugadores();
        model.addAttribute("attJugadores", listado);
        model.addAttribute("attIdJugador", new JugadoresBean());
        return "jugadores";
    }

    @PostMapping(value="eliminarJugador")
    public String eliminarJugador(Model model, @ModelAttribute("attDatosJugador") JugadoresBean datosJugador){
        servicio.suprimirJugador(datosJugador);
        List<JugadoresBean> listado = servicio.obtenerJugadores();
        model.addAttribute("attJugadores", listado);
        model.addAttribute("attIdJugador", new JugadoresBean());
        return "jugadores";
    }

    @RequestMapping(value = "IraAnadir", method = RequestMethod.GET)
    public String anadir(Model model) {
        model.addAttribute("attDatosJugador", new JugadoresBean());
        return "anadirJugador";
    }

    @PostMapping(value = "anadirJugador")
    public String anadirJugador(Model model, @ModelAttribute("attDatosJugador") JugadoresBean datosJugador) {
        servicio.agregarJugador(datosJugador);
        List<JugadoresBean> listado = servicio.obtenerJugadores();
        model.addAttribute("attJugadores", listado);
        model.addAttribute("attIdJugador", new JugadoresBean());
        return "jugadores";
    }
}

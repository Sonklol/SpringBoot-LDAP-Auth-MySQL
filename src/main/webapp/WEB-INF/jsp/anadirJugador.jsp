<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" >
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="https://brandemia.org/sites/default/files/inline/images/qatar-2022-logo-700x700.jpg"/>
        <link rel="stylesheet" href="/css/style.css">
        <link rel="stylesheet" href="/css/others.css">
        <title>INSERTAR NUEVO JUGADOR</title>
    </head>
    <body>
        <div>
            <h1>AÑADIR JUGADOR</h1>
            <form action="anadirJugador" method="post" modelAtribute="attDatosJugador">
                <div>
                    Jugador:
                </div>
                <div>
                    <form:input path="attDatosJugador.jugador" placeholder="Cristiano Ronaldo"/>
                </div>
                <br>
                <div>
                    Fecha Nacimiento:
                </div>
                <div>
                    <form:input path="attDatosJugador.fechaNacimiento" placeholder="05/02/1985"/>
                </div>
                <br>
                <div>
                    Equipo:
                </div>
                <div>
                    <form:input path="attDatosJugador.equipo" placeholder="Manchester United"/>
                </div>
                <br>
                <div>
                    Seleccion:
                </div>
                <div>
                    <form:input path="attDatosJugador.seleccion" placeholder="1"/>
                </div>
                <br>
                <input type="submit" value="💾 GUARDAR"/>
            </form>
        </div>
    </body>
</html>
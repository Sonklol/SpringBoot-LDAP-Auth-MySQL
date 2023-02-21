<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" >
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="https://brandemia.org/sites/default/files/inline/images/qatar-2022-logo-700x700.jpg"/>
        <link rel="stylesheet" href="/css/style.css">
        <link rel="stylesheet" href="/css/others.css">
        <title>DATOS JUGADOR</title>
    </head>
    <body>
        <h1>EDITAR JUGADOR</h1>
        <form action="actualizarJugador" method="post" modelAttribute="attDatosJugador">
            <div>
                Jugador:
            </div>
            <div>
                <form:input path="attDatosJugador.jugador" placeholder="Cristiano Ronaldo"/>
            </div>
            <br>
            <div>
                Selección:
            </div>
            <div>
                <form:input path="attDatosJugador.seleccion" aria-readonly="true" placeholder="Portugal"/>
            </div>
            <br>
            <div>
                Fecha Nacimiento:
            </div>
            <div>
                <form:input path="attDatosJugador.fechaNacimiento" aria-readonly="true" placeholder="12/12/1990"/>
            </div>
            <br>
            <form:input path="attDatosJugador.idJugador" hidden="true"/>
            <br>
            <input type="submit" value="💾 GUARDAR"/>
        </form>
    </body>
</html>
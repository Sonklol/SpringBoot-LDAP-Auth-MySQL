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
        <link rel="stylesheet" href="/css/style.css"/>
        <link rel="stylesheet" href="/css/jugadores.css"/>
        <title>Listado Jugadores</title>
        <script src="/js/jugadores.js"></script>
    </head>
    <body>
        <div>
            <h1>LISTADO DE JUGADORES MUNDIAL QATAR</h1>
        </div>
        <div>
            <h3>PARTICIPANTES - MUNDIAL</h3>
            <table>
                <tr style="text-decoration: solid;">
                    <td>Jugador</td>
                    <td>Selección</td>
                </tr>
                <c:forEach items="${attJugadores}" var="jugador">
                    <tr>
                        <td>
                            <c:out value="${jugador.jugador}"></c:out>
                        </td>
                        <td>
                            <c:out value="${jugador.seleccion}"></c:out>
                        </td>
                        <td>
                            <input type="button" value="📝 EDITAR" onclick="editar('${jugador.idJugador}')"/>
                            <input type="button" value="❌ BORRAR" onclick="borrar('${jugador.idJugador}')"/>
                        </td>
                    </tr>
                </c:forEach>
            </table>
            <input type="button" value="📋 AÑADIR NUEVO JUGADOR" onclick="anadir('${jugador.idJugador}')" class="addclass"/>
        </div>
        <form action="verJugador" method="POST" id="formulario" modelAttribute="attIdJugador">
            <form:input path="attIdJugador.idJugador" hidden="true" id="idJugador"/>
        </form>
        <form action="eliminarJugador" method="POST" id="eliminarformulario" modelAttribute="attIdJugador">
            <form:input path="attIdJugador.idJugador" hidden="true" id="idJugadorE"/>
        </form>
        <form action="IraAnadir" method="GET" id="anadirformulario" modelAttribute="attIdJugador"></form>
    </body>
</html>
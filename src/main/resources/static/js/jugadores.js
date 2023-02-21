function editar(idJugador){
    document.getElementById("idJugador").value = idJugador;
    document.getElementById("formulario").submit();
}

function borrar(idJugador){
    document.getElementById("idJugadorE").value = idJugador;
    document.getElementById("eliminarformulario").submit();
}

function anadir(idJugador){
    document.getElementById("anadirformulario").submit();
}
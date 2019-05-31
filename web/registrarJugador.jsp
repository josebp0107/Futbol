<%-- 
    Document   : registrarJugador
    Created on : 30/05/2019, 07:00:50 PM
    Author     : Jose David Ballesteros
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <link href="estilos.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de jugador</title>
    </head>
    <body>
        
        <div id="principal">
        <h1>Torneo intermunicipal de futbol</h1>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <ul  class="nav nav-tabs">
                <li class="nav-item active"><a class="nav-link" href="#">Gestionar equipo</a></li>
                <li class="nav-item active"><a class="nav-link" href="#">Gestionar jugador</a></li>
                <li class="nav-item active"><a class="nav-link" href="#">Generacion de programacion</a></li>
                <li class="nav-item active"><a class="nav-link" href="#">Generacion de estadisticas</a></li>
                <li class="nav-item active"><a class="nav-link" href="#">Gestionar resultados</a></li>  
            </ul>
        </nav>
        </div>
        <form action="registroJugadores.jsp" method="post" style="width: 700px; margin: 0 auto;">
            <label>Identificacion del jugador</label>
            <input type="text" class="form-control" name="idJugador" placeholder="identificacion">
            <label>Nombre</label>
            <input type="text" class="form-control" name="nombreJugador" placeholder="Nombres">
            <label>Dorsal</label>
            <input type="text" class="form-control" name="dorsal" placeholder="Dorsal">
            <label>Posicion</label>
            <input type="text" class="form-control" name="posicion" placeholder="Posicion"><br>
            <input type="submit" value="Registrar" class="btn btn-primary">
            <input type="submit" value="Consultar" class="btn btn-primary">
            <input type="reset" value="Eliminar" class="btn btn-danger">
            
        </form>
    </body>
</html>

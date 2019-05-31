<%-- 
    Document   : registrarEquipo
    Created on : 28/05/2019, 10:53:59 PM
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
        <title>JSP Page</title>
    </head>
    <body>
        <div id="principal">
        <h1>Torneo intermunicipal de futbol</h1>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <ul  class="nav nav-tabs">
                <li class="nav-item active"><a class="nav-link" href="registrarEquipo.jsp">Gestionar equipo</a></li>
                <li class="nav-item active"><a class="nav-link" href="registrarJugador.jsp">Gestionar jugador</a></li>
                <li class="nav-item active"><a class="nav-link" href="#">Generacion de programacion</a></li>
                <li class="nav-item active"><a class="nav-link" href="#">Generacion de estadisticas</a></li>
                <li class="nav-item active"><a class="nav-link" href="#">Gestionar resultados</a></li>  
            </ul>
        </nav>
        </div>
        
        <form action="procedimientoRegistrarEquipo.jsp" method="post" style="width: 700px; margin: 0 auto;">
            <label>Nombre del equipo</label>
            <input type="text" class="form-control" name="nombreEquipo" placeholder="Nombre del equipo">
            <label>Nombre del entrenador</label>
            <input type="text" class="form-control" name="nombreEntrenador" placeholder="Nombre del equipo"><br>
            <input type="submit" class="btn btn-primary">
            <input type="reset" class="btn btn-danger">
        </form>
    </body>
</html>

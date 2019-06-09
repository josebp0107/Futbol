<%-- 
    Document   : ConsultarJugador
    Created on : 31/05/2019, 11:55:57 PM
    Author     : KOGARASUMARU
--%>

<%@page import="edu.CECAR.logica.Jugador"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="edu.CECAR.logica.SentenciaPreparada"%>
<%@page import="edu.CECAR.persistencia.ConexionMySQL"%>
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
                    <li class="nav-item active"><a class="nav-link" href="ConsultarEquipo.jsp">Consultar equipo</a></li>
                    <li class="nav-item active"><a class="nav-link" href="ConsultarJugador.jsp">Consultar jugador</a></li>                    <li class="nav-item active"><a class="nav-link" href="#">Generacion de programacion</a></li>
                    <li class="nav-item active"><a class="nav-link" href="#">Generacion de estadisticas</a></li>
                    <li class="nav-item active"><a class="nav-link" href="#">Gestionar resultados</a></li>  
                </ul>
            </nav>
        </div>

        <%
            Jugador jugador = SentenciaPreparada.getProcedimientoConsultarJugador(request.getParameter("idJugador"));
        %>
        <form style="width: 700px; margin: 0 auto;">
            <label>Codigo del equipo</label>
            <input type="text" class="form-control" name="idJugador" value="<%=jugador.getIdentificacion()%>">
            <label>Nombre del equipo</label>
            <input type="text" class="form-control" name="nombreEquipo" value="<%=jugador.getNombreCompleto()%>">
            <label>Nombre del entrenador</label>
            <input type="text" class="form-control" name="nombreEntrenador" value="<%=jugador.getPosicion()%>"><br>
        </form>
    </body>
</html>

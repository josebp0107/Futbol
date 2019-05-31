<%-- 
    Document   : registroJugadores
    Created on : 30/05/2019, 07:06:20 PM
    Author     : Jose David Ballesteros
--%>

<%@page import="edu.CECAR.logica.Jugador"%>
<%@page import="edu.CECAR.logica.Equipo"%>
<%@page import="edu.CECAR.persistencia.ConexionMySQL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            ConexionMySQL conexionMySQL = new ConexionMySQL();
            Jugador jugador = new Jugador();
            jugador.setIdentificacion(Integer.parseInt(request.getParameter("idJugador")));
            jugador.setNombreCompleto(request.getParameter("nombreJugador"));
            jugador.setDorsal(Integer.parseInt(request.getParameter("dorsal")));
            jugador.setPosicion(request.getParameter("posicion"));
            conexionMySQL.ingresoDatosJugador(jugador);
            response.sendRedirect("index.html"); 
        
        %>
    </body>
</html>

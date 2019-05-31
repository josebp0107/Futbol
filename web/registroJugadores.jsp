<%-- 
    Document   : registroJugadores
    Created on : 30/05/2019, 07:06:20 PM
    Author     : Jose David Ballesteros
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="edu.CECAR.logica.SentenciaPreparada"%>
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
            PreparedStatement sentenciaPreparada = SentenciaPreparada.getProcedimientoInsertarJugador();
            
            sentenciaPreparada.setInt(1, Integer.parseInt(request.getParameter("idJugador")));
            sentenciaPreparada.setString(2, (request.getParameter("nombreJugador")));
            sentenciaPreparada.setInt(3, Integer.parseInt(request.getParameter("dorsal")));
            sentenciaPreparada.setString(4, (request.getParameter("posicion")));
            sentenciaPreparada.execute();
            response.sendRedirect("index.html"); 
        
        %>
    </body>
</html>

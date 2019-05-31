<%-- 
    Document   : procedimientoRegistrarEquipo
    Created on : 28/05/2019, 11:25:42 PM
    Author     : Jose David Ballesteros
--%>

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
            Equipo equipo = new Equipo();
            
            equipo.setNombreEquipo(request.getParameter("nombreEquipo"));
            equipo.setNombreEquipo(request.getParameter("nombreEntrenador"));
            conexionMySQL.ingresoDatos(equipo);
            response.sendRedirect("registrarEquipo.php"); 
        %>
    </body>
</html>

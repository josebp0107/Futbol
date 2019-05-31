/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.CECAR.logica;

import edu.CECAR.persistencia.ConexionMySQL;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Jose David Ballesteros
 */
public class SentenciaPreparada {
    private static  PreparedStatement gestionarTabla;
    
    public static PreparedStatement getProcedimientoInsertarJugador() throws SQLException {

        gestionarTabla = ConexionMySQL.getConnection().prepareStatement("INSERT INTO jugadores (idJugador,nombres,dorsal,posicion) VALUES (?,?,?,?)");

        return gestionarTabla;
    }
    
     public static PreparedStatement getProcedimientoInsertarEquipo() throws SQLException {

        gestionarTabla = ConexionMySQL.getConnection().prepareStatement("INSERT INTO equipo (idEquipo,nombre,nombreEntrenador) VALUES (?,?,?)");

        return gestionarTabla;
    }
    
}

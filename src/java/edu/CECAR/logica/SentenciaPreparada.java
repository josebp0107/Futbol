/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.CECAR.logica;

import edu.CECAR.persistencia.ConexionMySQL;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Jose David Ballesteros
 */
public class SentenciaPreparada {

    private static PreparedStatement gestionarTabla;

    public static PreparedStatement getProcedimientoInsertarJugador() throws SQLException {

        gestionarTabla = ConexionMySQL.getConnection().prepareStatement("CALL gestionarJugador(?,?,?,?,?)");
        //gestionarTabla = ConexionMySQL.getConnection().prepareStatement("INSERT INTO jugadores (idJugador,nombres,dorsal,posicion) VALUES (?,?,?,?)");

        return gestionarTabla;
    }

    public static PreparedStatement getProcedimientoInsertarEquipo() throws SQLException {

        gestionarTabla = ConexionMySQL.getConnection().prepareCall("CALL gestionarEquipo (?,?,?,?)");
        //gestionarTabla = ConexionMySQL.getConnection().prepareStatement("INSERT INTO equipo (idEquipo,nombre,nombreEntrenador) VALUES (?,?,?)");

        return gestionarTabla;
    }

    public static Equipo getProcedimientoConsultarEquipo(String id) {
        Equipo equipo = new Equipo();

        try {
            gestionarTabla = ConexionMySQL.getConnection().prepareStatement("select * from equipo where idEquipo = '" + id + "'");

            ResultSet rs = gestionarTabla.executeQuery();
            rs.next();
            if (rs.getRow() != 0) {
                equipo.setIdentificacion(rs.getInt("idEquipo"));
                equipo.setNombreEquipo(rs.getString("nombre"));
                equipo.setNombreEntrenador(rs.getString("nombreEntrenador"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(SentenciaPreparada.class.getName()).log(Level.SEVERE, null, ex);
        }

        return equipo;
    }

    public static Jugador getProcedimientoConsultarJugador(String id) {

        Jugador jugador = new Jugador();
        try {
            gestionarTabla = ConexionMySQL.getConnection().prepareStatement("select * from jugadores where idJugador = '" + id + "'");

            ResultSet rs = gestionarTabla.executeQuery();
            rs.next();
            if (rs.getRow() != 0) {
                jugador.setIdentificacion(rs.getInt("idJugador"));
                jugador.setNombreCompleto(rs.getString("nombres"));
                jugador.setDorsal(rs.getInt("dorsal"));
                jugador.setPosicion(rs.getString("posicion"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(SentenciaPreparada.class.getName()).log(Level.SEVERE, null, ex);
        }
        return jugador;
    }
}

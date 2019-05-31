/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.CECAR.persistencia;

import edu.CECAR.logica.Equipo;
import edu.CECAR.logica.Jugador;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/**
 *
 * @author Jose David Ballesteros
 */
public class ConexionMySQL {
    private Connection con;
    private Statement stm;

    public ConexionMySQL() {
        try{
            //Class.forName("com.mysql.jdbc.Driver").newInstance();  
            Class.forName("org.apache.derby.jdbc.ClientDriver").newInstance();
            //con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ejemplo", "root",null);
            con = DriverManager.getConnection("jdbc:derby://localhost:1527/futbol", "root","");
            stm = con.createStatement();
        }
        catch(Exception e){
            System.out.println(""+e.getMessage());
            e.printStackTrace();
        }
    }
    
    public boolean ingresoDatos(Equipo equipo){
        boolean registrado = false;
        try{
            
            int i = stm.executeUpdate("INSERT INTO equipo VALUES ("+null +",'"+ equipo.getNombreEquipo()+"','"+ equipo.getNombreEntrenador()+")");
            if(i > 0){
                registrado = true;
            }
        }
        catch(Exception e){
            
        }
        
        return registrado;
    }
    
    public boolean ingresoDatosJugador(Jugador jugador){
        boolean registrado = false;
        try{
            
            int i = stm.executeUpdate("INSERT INTO jugadores VALUES ("+ jugador.getIdentificacion()+",'"+ jugador.getNombreCompleto()+"',"+ jugador.getDorsal()+",'"+jugador.getPosicion()+"')");
            if(i > 0){
                registrado = true;
            }
        }
        catch(Exception e){
            
        }
        
        return registrado;
    }
    
}

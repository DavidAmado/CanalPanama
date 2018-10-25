/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Negocio.User;

import Excepciones.RHException;
import Conexiones.ServiceLocator;
import Servlets.Servlet_InicioSesion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;

/**
 *
 * @author kusan
 */
public class DAOUser {

    public void crearUsuario(User usuario) throws RHException, Exception {
      try {
        int result = 1;
        Statement sentencia = null;
        String sql = "CREATE USER " + usuario.getUser() + " IDENTIFIED BY " + usuario.getPaswd() ;
        String sql2 = "GRANT connect to " + usuario.getUser();
        Connection conexion = ServiceLocator.getInstance().tomarConexion("system","1q2w3e4r");
        sentencia = conexion.createStatement();
        result = sentencia.executeUpdate(sql);
                if (result != 1) {
                    sentencia = conexion.createStatement();
                    result = sentencia.executeUpdate(sql2);
                }
        ServiceLocator.getInstance().commit();        
      } catch (SQLException e) {
           throw new RHException( "UserDAO", "No pudo crear el usuario"+ e.getMessage());
      }  finally {
         ServiceLocator.getInstance().liberarConexion();
      }
    }
    
    
    
    
    public boolean conectarUsuario(User usuario) throws ServletException, IOException {
        boolean salida=false;
        try {
            String user = usuario.getUser();
            String passwd = usuario.getPaswd();
            
            Connection conexion = ServiceLocator.getInstance().tomarConexion(user, passwd);
            if (conexion!=null) salida=true;
            
        } catch (SQLException ex) {
            Logger.getLogger(Servlet_InicioSesion.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(Servlet_InicioSesion.class.getName()).log(Level.SEVERE, null, ex);
        }  finally {
         ServiceLocator.getInstance().liberarConexion();
      }
        return salida;
    }
}

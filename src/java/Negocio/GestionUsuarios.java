/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Negocio;

import Datos.DAOUser;
import Excepciones.RHException;
import java.io.IOException;
import javax.servlet.ServletException;
/**
 *
 * @author david
 */
public class GestionUsuarios {
    private DAOUser userDao;
    private User usuario;

    public GestionUsuarios() {
        userDao = new DAOUser();
    }
    
    public boolean conectarUsuario(String us,String pw) throws ServletException, IOException{
        usuario = new User();
        usuario.setUser(us);
        usuario.setPaswd(pw);
        return userDao.conectarUsuario(usuario);
    }
    
    public void crearUsuario(String us,String pw) throws Exception{
        usuario = new User();
        usuario.setUser(us);
        usuario.setPaswd(pw);
        userDao.crearUsuario(usuario);
    }
}

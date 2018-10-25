/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Conexiones.ServiceLocator;
import Datos.DAOUser;
import Excepciones.RHException;
import Negocio.GestionUsuarios;
import Negocio.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.*;


/**
 *
 * @author kusan
 */
public class Servlet_InicioSesion extends HttpServlet {
    GestionUsuarios gesUser;
    public Servlet_InicioSesion() {
        gesUser = new GestionUsuarios();
    }
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Servlet_IncioSesion</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Servlet_IncioSesion at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     
            HttpSession sesion = request.getSession();
            PrintWriter out = response.getWriter();
            /*
            Este metodo post genera verifica que el usuario
            se pueda conectar a la base de datos Oracle
             */
            //User us = new User();
            String user = request.getParameter("txt_user");
            String passwd = request.getParameter("txt_passwd");
            System.out.println(user+" este es el usuario");
            System.out.println(passwd+" esta es la contra");
            
            if (gesUser.conectarUsuario(user, passwd)) {
                sesion.setAttribute("var_user", user);
                sesion.setAttribute("var_passwd", passwd);
                response.sendRedirect("ComponentePrincipal.jsp");
            }
         
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

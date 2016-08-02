/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.controlador;

import com.repositoriounia.dao.DAOException;
import com.repositoriounia.dao.UsuarioDAO;
import com.repositoriounia.dao.UsuarioDAOFactory;
import com.repositoriounia.modelo.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Mi Laptop
 */
@WebServlet(name = "UsuarioController", urlPatterns = {"/UsuarioController"})
public class UsuarioController extends HttpServlet {
    private Usuario objU;
    private UsuarioDAOFactory fabricate;
    private UsuarioDAO daote;

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
            throws ServletException, IOException, DAOException {
        response.setContentType("text/html;charset=UTF-8");
        String accion=request.getParameter("accion");
        fabricate =new UsuarioDAOFactory();
        daote=fabricate.metodoDAO();
        
        switch(accion)
        {
            case "validar":validar(request,response);
                break;
            case "cerrarsesion":cerrarsesion(request,response);
                break;
            case "3":
                break;
            case "4":
                break;
            case "5":
                break;
            case "6":
                break;
            case "7":
                break;
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
        try {
            processRequest(request, response);
        } catch (DAOException ex) {
            Logger.getLogger(UsuarioController.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (DAOException ex) {
            Logger.getLogger(UsuarioController.class.getName()).log(Level.SEVERE, null, ex);
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

    private void validar(HttpServletRequest request, HttpServletResponse response) throws DAOException, IOException {
        HttpSession sesion=request.getSession();
        System.out.println("ingreso a opcion");
      objU=new Usuario();
      objU.setUsuario(request.getParameter("usuario"));
      objU.setPassword(request.getParameter("clave"));
        System.out.println("buscando");
      Usuario usu1=daote.validar(objU);
       
     
       if (usu1 != null){
             System.out.println("entro al if principal");
            
             sesion.setAttribute("sesion",usu1);
            if(usu1.getTipo().name()=="A"){
                System.out.println("entro al if  de administrador");
                response.sendRedirect("publicacion_2.jsp");
            }
            else if(usu1.getTipo().name()=="U"){
                 System.out.println("entro al if  de usuario");
                response.sendRedirect("Publicaciones_1.jsp");
            }
        }
        else{
             response.sendRedirect("error.jsp");
        }
      
      
    }

    private void cerrarsesion(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession sesion=request.getSession();
         Usuario   usu=(Usuario)sesion.getAttribute("sesion");
        sesion.removeAttribute("sesion");
        response.sendRedirect("login.jsp");
    }

}

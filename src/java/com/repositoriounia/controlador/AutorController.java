/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.controlador;

import com.repositoriounia.dao.AutorDAO;
import com.repositoriounia.dao.AutorDAOFactory;
import com.repositoriounia.dao.DAOException;
import com.repositoriounia.modelo.Autor;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Mi Laptop
 */
@WebServlet(name = "AutorController", urlPatterns = {"/AutorController"})
public class AutorController extends HttpServlet {
    private Autor objAu;
    private AutorDAOFactory fabricate;
    private AutorDAO daote;
 private RequestDispatcher rd=null;
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
        fabricate=new AutorDAOFactory();
        daote=fabricate.metodoDAO();
        switch(accion)
        {
            case "buscarpordni":
                buscarpordni(request,response);
                break;
            case "2":
                break;
            case "3":
                break;
            case "4":
                break;
            case "5":
                break;
            case "6":
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
            Logger.getLogger(AutorController.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(AutorController.class.getName()).log(Level.SEVERE, null, ex);
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

    private void buscarpordni(HttpServletRequest request, HttpServletResponse response) throws ServletException, DAOException, IOException {
       
        String dni=request.getParameter("dni").toUpperCase();
        int idPublicacion=Integer.parseInt(request.getParameter("idPublicacion"));
        System.out.println("llego dni="+dni+", idpublicacion ="+idPublicacion);
        
       Autor  Au=daote.leerxdni(dni);
        
        if(Au!=null){
            System.out.println(Au.toString());
          request.setAttribute("Au",Au);
        rd = getServletContext().getRequestDispatcher("/Prototipos/crearAutor.jsp?val=nue1&idPublicacion="+idPublicacion);
        rd.forward(request, response);
        
        }
        else if(Au==null)
        {
                System.out.println("es nulo");
        rd = getServletContext().getRequestDispatcher("/Prototipos/crearAutor.jsp?val=nue&idPublicacion="+idPublicacion);
        rd.forward(request, response);
        }
    }

}

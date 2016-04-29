/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.controlador;

import com.repositoriounia.dao.DAOException;
import com.repositoriounia.dao.PublicacionDAO;
import com.repositoriounia.dao.PublicacionDAOFactory;
import com.repositoriounia.modelo.Publicacion;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
@WebServlet(name = "PublicacionController", urlPatterns = {"/PublicacionController"})
public class PublicacionController extends HttpServlet {

    private Publicacion objPu;
    private PublicacionDAOFactory fabricate;
    private PublicacionDAO daote;
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
            throws ServletException, IOException, ParseException, DAOException {
        response.setContentType("text/html;charset=UTF-8");
        String accion = request.getParameter("accion");
        fabricate = new PublicacionDAOFactory();
        daote = fabricate.metodoDAO();
        switch (accion) {
            case "crearPublicacion":
                crearPublicacion(request, response);
                break;
            case "ObtenerTodos":
                ObtenerTodos(request,response);
                break;
            case "13":
                break;
            case "14":
                break;
            case "17":
                break;
            case "15":
                break;
            case "16":
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
        } catch (ParseException ex) {
            Logger.getLogger(PublicacionController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (DAOException ex) {
            Logger.getLogger(PublicacionController.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (ParseException ex) {
            Logger.getLogger(PublicacionController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (DAOException ex) {
            Logger.getLogger(PublicacionController.class.getName()).log(Level.SEVERE, null, ex);
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

    private void crearPublicacion(HttpServletRequest request, HttpServletResponse response) throws ParseException, ServletException, DAOException, IOException {
        System.out.println("entro a servlet");
        SimpleDateFormat fe=new SimpleDateFormat("yyyy-MM-dd");
          Date fec = new Date(fe.parse(request.getParameter("fechapublica")).getTime());
        objPu= new Publicacion();
        objPu.getLineaInvestigacion().setIdLineaInvestigacion(Integer.parseInt(request.getParameter("linea")));
        objPu.setTitulo(request.getParameter("titulo"));
        objPu.setFechaPublicacion(fec);
        Publicacion publi=daote.crearleer(objPu);
        request.setAttribute("publi", publi);

        rd = getServletContext().getRequestDispatcher("/Prototipos/PublicacionAutores.jsp");
        rd.forward(request, response);
        
    }

    private void ObtenerTodos(HttpServletRequest request, HttpServletResponse response) throws DAOException, ServletException, IOException {
        Publicacion []publi=daote.leertodo();
        request.setAttribute("publi", publi);
        rd = getServletContext().getRequestDispatcher("/Prototipos/RequestBucarPubli.jsp");
        rd.forward(request, response);
    }

}
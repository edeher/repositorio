/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.controlador;

import com.repositoriounia.dao.DAOException;
import com.repositoriounia.dao.SolicitanteDAO;
import com.repositoriounia.dao.SolicitanteDAOFactory;
import com.repositoriounia.modelo.Publicacion;
import com.repositoriounia.modelo.Solicitante;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.json.Json;
import javax.json.JsonArrayBuilder;
import javax.json.JsonObject;
import javax.json.JsonObjectBuilder;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Mi Laptop
 */
@WebServlet(name = "SolicitanteController", urlPatterns = {"/SolicitanteController"})
public class SolicitanteController extends HttpServlet {
    private Solicitante objSo;
    private SolicitanteDAOFactory fabricate;
    private SolicitanteDAO daote;

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
       fabricate =new SolicitanteDAOFactory();
       daote=fabricate.metodoDAO();
       switch(accion)
       {
           case "ObtenerTodos":
               ObtenerTodos(request,response);
               break;
           case "12":
               break;
           case "13":
               break;
           case "14":
               break;
           case "15":
               break;
           case "16":
               break;
           case "11":
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
            Logger.getLogger(SolicitanteController.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(SolicitanteController.class.getName()).log(Level.SEVERE, null, ex);
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

    private void ObtenerTodos(HttpServletRequest request, HttpServletResponse response) throws DAOException, IOException {
        Solicitante[] soli = daote.leertodo();         
        JsonObjectBuilder objbuilder = Json.createObjectBuilder();  
        JsonArrayBuilder  arraySolicitante = Json.createArrayBuilder();        
        JsonArrayBuilder  arrayDatosSolicitante; 
       for (Solicitante solicitante : soli) {
            //System.out.println(solicitud.toString());            
            arrayDatosSolicitante = Json.createArrayBuilder();
            arrayDatosSolicitante.add(solicitante.getIdSolicitante());
            arrayDatosSolicitante.add(solicitante.getNombres()+" "+solicitante.getApellidos() );
            arrayDatosSolicitante.add( solicitante.getAreaTrabajo());  
            arrayDatosSolicitante.add(solicitante.getTipoEntidad().name());
            arrayDatosSolicitante.add(solicitante.getEntidad());
           
          
            arraySolicitante.add(arrayDatosSolicitante);
        }
        objbuilder.add("data", arraySolicitante);
        JsonObject obj = objbuilder.build();
        response.setContentType("application/json");
       
        try (PrintWriter pw = new PrintWriter(response.getOutputStream())) {
            pw.println(obj.toString()); 
        }
    }

}

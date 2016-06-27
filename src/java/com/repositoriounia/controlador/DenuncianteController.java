/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.controlador;

import com.repositoriounia.dao.DAOException;
import com.repositoriounia.dao.DenuncianteDAO;
import com.repositoriounia.dao.DenuncianteDAOFactory;
import com.repositoriounia.modelo.Denunciante;
import com.repositoriounia.modelo.LineaInvestigacion;
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
@WebServlet(name = "DenuncianteController", urlPatterns = {"/DenuncianteController"})
public class DenuncianteController extends HttpServlet {
    private Denunciante objDEnun;
    private DenuncianteDAOFactory fabricate;
    private DenuncianteDAO daote;
    

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
        fabricate =new DenuncianteDAOFactory();
        daote=fabricate.metodoDAO();
        switch(accion)
        {
            case "ObtenerTodos":
                ObtenerTodos(request,response);
                break;
            case "BuscarxidArchivo":BuscarxidArchivo(request,response);
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
            Logger.getLogger(DenuncianteController.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(DenuncianteController.class.getName()).log(Level.SEVERE, null, ex);
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
         Denunciante[] denun = daote.leertodo();         
        JsonObjectBuilder objbuilder = Json.createObjectBuilder();  
        JsonArrayBuilder  arrayDenunciante = Json.createArrayBuilder();        
        JsonArrayBuilder  arrayDatosDenunciante; 
       for (Denunciante denunciante :  denun) {
            //System.out.println(solicitud.toString());            
            arrayDatosDenunciante = Json.createArrayBuilder();
            arrayDatosDenunciante.add(denunciante .getIdDenunciante());
             arrayDatosDenunciante.add(denunciante .getNombres()+" "+denunciante.getApellidos());
            arrayDatosDenunciante.add(denunciante  .getTelefono());
            arrayDatosDenunciante.add(denunciante  .getCorrero());
             arrayDenunciante.add(arrayDatosDenunciante);
        }
        objbuilder.add("data", arrayDenunciante );
        JsonObject obj = objbuilder.build();
        response.setContentType("application/json");
       
        try (PrintWriter pw = new PrintWriter(response.getOutputStream())) {
            pw.println(obj.toString()); 
        }
    
    }

    private void BuscarxidArchivo(HttpServletRequest request, HttpServletResponse response) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.controlador;

import com.repositoriounia.dao.ArchivosSolicitadosDAO;
import com.repositoriounia.dao.ArchivosSolicitadosDAOFactory;
import com.repositoriounia.dao.DAOException;
import com.repositoriounia.modelo.ArchivosSolicitados;
import com.repositoriounia.modelo.Autor;
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
@WebServlet(name = "ArchivosSolicitadosController", urlPatterns = {"/ArchivosSolicitadosController"})
public class ArchivosSolicitadosController extends HttpServlet {
    private ArchivosSolicitados objArSo;
    private ArchivosSolicitadosDAOFactory fabricate;
    private ArchivosSolicitadosDAO daote;

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
       fabricate=new ArchivosSolicitadosDAOFactory();
       daote=fabricate.metodoDAO();
       
       switch(accion)
       {
           case "ObtenerTodos":ObtenerTodos(request,response);
               break;
           case "2":
               break;
           case "3":
               break;
           case "4":
               break;
           case "5":
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
            Logger.getLogger(ArchivosSolicitadosController.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(ArchivosSolicitadosController.class.getName()).log(Level.SEVERE, null, ex);
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
    ArchivosSolicitados[] arSo = daote.leertodo();         
        JsonObjectBuilder objbuilder = Json.createObjectBuilder();  
        JsonArrayBuilder  arrayArchivosSolicitados = Json.createArrayBuilder();        
        JsonArrayBuilder  arrayDatosArchivosSolicitados; 
       for (ArchivosSolicitados ArchSol : arSo ) {
            //System.out.println(solicitud.toString());            
            arrayDatosArchivosSolicitados = Json.createArrayBuilder();
            arrayDatosArchivosSolicitados.add(ArchSol .getIdArchivoSolicitado());
            arrayDatosArchivosSolicitados.add(ArchSol .getSolicitante().getNombres()+" "+ArchSol .getSolicitante().getApellidos());
            arrayDatosArchivosSolicitados.add( ArchSol .getArchivoPublicacion().getPublicacion().getTitulo()); 
            arrayDatosArchivosSolicitados.add( ArchSol .getArchivoPublicacion().getDescripcion().getNom());
            arrayDatosArchivosSolicitados.add(ArchSol .getFechaSolicitud().toString());
            arrayDatosArchivosSolicitados.add(ArchSol .getRespuesta().getNom());
            arrayDatosArchivosSolicitados.add(ArchSol .getFechaRespuesta().toString());
            
            arrayArchivosSolicitados.add(arrayDatosArchivosSolicitados);
        }
        objbuilder.add("data", arrayArchivosSolicitados);
        JsonObject obj = objbuilder.build();
        response.setContentType("application/json");
       
        try (PrintWriter pw = new PrintWriter(response.getOutputStream())) {
            pw.println(obj.toString()); 
        }   
    }

}

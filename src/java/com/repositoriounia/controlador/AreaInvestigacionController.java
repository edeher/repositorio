/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.controlador;

import com.repositoriounia.dao.AreaInvestigacionDAO;
import com.repositoriounia.dao.AreaInvestigacionDAOFactory;
import com.repositoriounia.dao.DAOException;
import com.repositoriounia.modelo.AreaInvestigacion;
import com.repositoriounia.modelo.Autor;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.json.Json;
import javax.json.JsonArrayBuilder;
import javax.json.JsonObject;
import javax.json.JsonObjectBuilder;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Mi Laptop
 */
@WebServlet(name = "AreaInvestigacionController", urlPatterns = {"/AreaInvestigacionController"})
@MultipartConfig
public class AreaInvestigacionController extends HttpServlet {
    private AreaInvestigacion objAIn;
    private AreaInvestigacionDAOFactory fabricate;
    private AreaInvestigacionDAO daote;

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
        fabricate =new AreaInvestigacionDAOFactory();
        daote=fabricate.metodoDAO();
        
        switch(accion)
        {
            case "ObtenerTodos":
                ObtenerTodos(request,response);
                break;
            case "modificarArea":modificarArea(request,response);
                break;
            case "crearArea":crearArea(request,response);
                break;
            case "eliminarArea":eliminarArea(request,response);
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
            Logger.getLogger(AreaInvestigacionController.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(AreaInvestigacionController.class.getName()).log(Level.SEVERE, null, ex);
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

    private void ObtenerTodos(HttpServletRequest request, HttpServletResponse response) throws IOException, DAOException {
        AreaInvestigacion[] Are = daote.leertodo();         
        JsonObjectBuilder objbuilder = Json.createObjectBuilder();  
        JsonArrayBuilder  arrayArea = Json.createArrayBuilder();        
        JsonArrayBuilder  arrayDatosArea; 
       for (AreaInvestigacion Area : Are) {
            //System.out.println(solicitud.toString());            
            arrayDatosArea = Json.createArrayBuilder();
            arrayDatosArea.add(Area .getIdAreaInvestigacion());
            arrayDatosArea.add(Area .getDescripcion());
           
            arrayArea.add(arrayDatosArea);
        }
        objbuilder.add("data", arrayArea );
        JsonObject obj = objbuilder.build();
        response.setContentType("application/json");
       
        try (PrintWriter pw = new PrintWriter(response.getOutputStream())) {
            pw.println(obj.toString()); 
        }
    }

    private void modificarArea(HttpServletRequest request, HttpServletResponse response) throws DAOException {
        objAIn = new AreaInvestigacion();
        Enumeration enumeration=request.getParameterNames();
        while (enumeration.hasMoreElements())
        {
        System.out.println(enumeration.nextElement());
        }
        objAIn.setIdAreaInvestigacion(Integer.parseInt(request.getParameter("idArea")));
       
       objAIn.setDescripcion(request.getParameter("descripcion").toString().toUpperCase());
       
       daote.modificar(objAIn);
    }

    private void crearArea(HttpServletRequest request, HttpServletResponse response) throws DAOException {
         objAIn = new AreaInvestigacion();
        Enumeration enumeration=request.getParameterNames();
        while (enumeration.hasMoreElements())
        {
        System.out.println(enumeration.nextElement());
        }
        
       
       objAIn.setDescripcion(request.getParameter("descripcion").toString().toUpperCase());
       
       daote.crear(objAIn);
    
    }

    private void eliminarArea(HttpServletRequest request, HttpServletResponse response) throws DAOException {
        objAIn = new AreaInvestigacion();
        Enumeration enumeration=request.getParameterNames();
        while (enumeration.hasMoreElements())
        {
        System.out.println(enumeration.nextElement());
        }
        int codigo=Integer.parseInt(request.getParameter("codigo"));
       
       
       
       daote.eliminar(codigo);
    }

}

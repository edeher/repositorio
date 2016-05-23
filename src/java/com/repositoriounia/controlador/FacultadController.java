/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.controlador;

import com.repositoriounia.dao.DAOException;
import com.repositoriounia.dao.FacultadDAO;
import com.repositoriounia.dao.FacultadDAOFactory;
import com.repositoriounia.modelo.AreaInvestigacion;
import com.repositoriounia.modelo.Facultad;
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
@WebServlet(name = "FacultadController", urlPatterns = {"/FacultadController"})
@MultipartConfig
public class FacultadController extends HttpServlet {
    private Facultad objFa;
    private FacultadDAOFactory fabricate;
    private FacultadDAO daote;

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
        fabricate =new FacultadDAOFactory();
        daote=fabricate.metodoDAO();
        switch(accion)
        {
            case "ObtenerTodos":ObtenerTodos(request,response);break;
            case "crearFacultad":crearFacultad(request,response);break;
            case "modificarFacultad":modificarFacultad(request,response); break;
            case "eliminarFacultad":eliminarFacultad(request,response);break;
            case "5":break;
            case "6":break;
            case "7":break;
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
            Logger.getLogger(FacultadController.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(FacultadController.class.getName()).log(Level.SEVERE, null, ex);
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
         Facultad[] fac = daote.leertodo();         
        JsonObjectBuilder objbuilder = Json.createObjectBuilder();  
        JsonArrayBuilder  arrayFacultad = Json.createArrayBuilder();        
        JsonArrayBuilder  arrayDatosFacultad; 
       for (Facultad fac1 : fac) {
            //System.out.println(solicitud.toString());            
            arrayDatosFacultad = Json.createArrayBuilder();
            arrayDatosFacultad.add(fac1 .getIdFacultad());
            arrayDatosFacultad.add(fac1 .getDescripcion());
           
            arrayFacultad.add(arrayDatosFacultad);
        }
        objbuilder.add("data", arrayFacultad );
        JsonObject obj = objbuilder.build();
        response.setContentType("application/json");
       
        try (PrintWriter pw = new PrintWriter(response.getOutputStream())) {
            pw.println(obj.toString()); 
        }
    }

    private void crearFacultad(HttpServletRequest request, HttpServletResponse response) throws DAOException {
        objFa = new Facultad();
        Enumeration enumeration=request.getParameterNames();
        while (enumeration.hasMoreElements())
        {
        System.out.println(enumeration.nextElement());
        }
        
       
       objFa.setDescripcion(request.getParameter("descripcion").toString().toUpperCase());
       
       daote.crear(objFa);
    }

    private void modificarFacultad(HttpServletRequest request, HttpServletResponse response) throws DAOException {
        objFa = new Facultad();
        Enumeration enumeration=request.getParameterNames();
        while (enumeration.hasMoreElements())
        {
        System.out.println(enumeration.nextElement());
        }
        objFa.setIdFacultad(Integer.parseInt(request.getParameter("idFacultad")));
       
       objFa.setDescripcion(request.getParameter("descripcion").toString().toUpperCase());
       
       daote.modificar(objFa); 
    }

    private void eliminarFacultad(HttpServletRequest request, HttpServletResponse response) throws DAOException {
      
        Enumeration enumeration=request.getParameterNames();
        while (enumeration.hasMoreElements())
        {
        System.out.println(enumeration.nextElement());
        }
        int codigo=Integer.parseInt(request.getParameter("codigo"));
       
       daote.eliminar(codigo); 
    }

}

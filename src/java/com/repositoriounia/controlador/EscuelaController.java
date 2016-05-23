/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.controlador;

import com.repositoriounia.dao.DAOException;
import com.repositoriounia.dao.EscuelaDAO;
import com.repositoriounia.dao.EscuelaDAOFactory;
import com.repositoriounia.modelo.Escuela;
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
@WebServlet(name = "EscuelaController", urlPatterns = {"/EscuelaController"})
@MultipartConfig
public class EscuelaController extends HttpServlet {
    private Escuela objEs;
    private EscuelaDAOFactory fabricate;
    private EscuelaDAO daote;

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
        fabricate=new EscuelaDAOFactory();
        daote=fabricate.metodoDAO();
        switch(accion)
        {
            case "buscarporFacultad":
                buscarporFacultad(request, response);
                break;
            case "ObtenerTodos":ObtenerTodos(request,response);
                break;
            case "NuevaEscuela":NuevaEscuela(request,response);
                break;
            case "modificarEscuela":modificarEscuela(request,response);
                break;
            case "eliminarEscuela":eliminarEscuela(request,response);
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
            Logger.getLogger(EscuelaController.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(EscuelaController.class.getName()).log(Level.SEVERE, null, ex);
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

    private void buscarporFacultad(HttpServletRequest request, HttpServletResponse response) throws DAOException, IOException {
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        int idFacultad=Integer.parseInt(request.getParameter("codigo"));
        
        Escuela []escu=daote.leertodo(idFacultad);
        StringBuilder escuelas=new StringBuilder();
        for(Escuela escu1: escu)
        {
            escuelas.append("<option value='").append(escu1.getIdEscuela()).append("'>")
                    .append(escu1.getDescripcion()).append("</option>");
        }
        out.print(escuelas.toString());
    }

    private void ObtenerTodos(HttpServletRequest request, HttpServletResponse response) throws IOException, DAOException {
        Escuela[] es = daote.leertodo();         
        JsonObjectBuilder objbuilder = Json.createObjectBuilder();  
        JsonArrayBuilder  arrayEscuela = Json.createArrayBuilder();        
        JsonArrayBuilder  arrayDatosEscuela; 
       for (Escuela es1 : es) {
            //System.out.println(solicitud.toString());            
            arrayDatosEscuela = Json.createArrayBuilder();
           arrayDatosEscuela.add(es1 .getIdEscuela());
           arrayDatosEscuela.add(es1 .getFacultad().getDescripcion());
            arrayDatosEscuela.add(es1 .getDescripcion());
           
            arrayEscuela.add(arrayDatosEscuela);
        }
        objbuilder.add("data",  arrayEscuela );
        JsonObject obj = objbuilder.build();
        response.setContentType("application/json");
       
        try (PrintWriter pw = new PrintWriter(response.getOutputStream())) {
            pw.println(obj.toString()); 
        }
    }

    private void NuevaEscuela(HttpServletRequest request, HttpServletResponse response) throws DAOException {
       objEs = new Escuela();
        Enumeration enumeration=request.getParameterNames();
        while (enumeration.hasMoreElements())
        {
        System.out.println(enumeration.nextElement());
        }
        
        objEs.getFacultad().setIdFacultad(Integer.parseInt(request.getParameter("facultad")));
       
       objEs.setDescripcion(request.getParameter("descripcion").toString().toUpperCase());
       
       daote.crear(objEs);
    }

    private void modificarEscuela(HttpServletRequest request, HttpServletResponse response) throws DAOException {
       objEs = new Escuela();
        Enumeration enumeration=request.getParameterNames();
        while (enumeration.hasMoreElements())
        {
        System.out.println(enumeration.nextElement());
        }
        objEs.setIdEscuela(Integer.parseInt(request.getParameter("idEscuela")));
        objEs.getFacultad().setIdFacultad(Integer.parseInt(request.getParameter("facultad")));
       
       objEs.setDescripcion(request.getParameter("descripcion").toString().toUpperCase());
       
       daote.modificar(objEs);
    }

    private void eliminarEscuela(HttpServletRequest request, HttpServletResponse response) throws DAOException {
         
        Enumeration enumeration=request.getParameterNames();
        while (enumeration.hasMoreElements())
        {
        System.out.println(enumeration.nextElement());
        }
        int codigo=Integer.parseInt(request.getParameter("codigo"));
       
       daote.eliminar(codigo); 
    }

}

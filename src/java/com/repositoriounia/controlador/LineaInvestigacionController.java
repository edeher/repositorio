/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.controlador;

import com.repositoriounia.dao.DAOException;
import com.repositoriounia.dao.LineaInvestigacionDAO;
import com.repositoriounia.dao.LineaInvestigacionDAOFactory;
import com.repositoriounia.modelo.AreaInvestigacion;
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
@WebServlet(name = "LineaInvestigacionController", urlPatterns = {"/LineaInvestigacionController"})
public class LineaInvestigacionController extends HttpServlet {
    private LineaInvestigacion objLiIn;
    private LineaInvestigacionDAOFactory fabricate;
    private LineaInvestigacionDAO daote;

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
       fabricate=new LineaInvestigacionDAOFactory();
       daote=fabricate.metodoDAO();
       switch(accion)
       {
           case "BuscarPorArea":
               BuscarPorArea(request,response);
               break;
           case "ObtenerTodos":
               ObtenerTodos(request,response);
               break;
           case "31":
               break;
           case "14":
               break;
           case "15":
               break;
           case "16":
               break;
           case "17":
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
            Logger.getLogger(LineaInvestigacionController.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(LineaInvestigacionController.class.getName()).log(Level.SEVERE, null, ex);
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

    private void BuscarPorArea(HttpServletRequest request, HttpServletResponse response) throws DAOException, IOException {
        response.setContentType("text/html");
        
        PrintWriter out=response.getWriter();
        
        int codigo=Integer.parseInt(request.getParameter("codigo"));
        LineaInvestigacion []linea=daote.leertodo(codigo);
        
        StringBuilder lineas=new StringBuilder();
        
        for(LineaInvestigacion linea1: linea)
        {
            lineas.append("<option value='").append(linea1.getIdLineaInvestigacion()).append("'>")
                    .append(linea1.getDescripcion()).append("</option>");
        }
        out.print(lineas.toString());
    }

    private void ObtenerTodos(HttpServletRequest request, HttpServletResponse response) throws IOException, DAOException {
         LineaInvestigacion[] lin = daote.leertodo();         
        JsonObjectBuilder objbuilder = Json.createObjectBuilder();  
        JsonArrayBuilder  arrayLinea = Json.createArrayBuilder();        
        JsonArrayBuilder  arrayDatosLinea; 
       for (LineaInvestigacion Linea : lin) {
            //System.out.println(solicitud.toString());            
            arrayDatosLinea = Json.createArrayBuilder();
            arrayDatosLinea.add(Linea .getIdLineaInvestigacion());
             arrayDatosLinea.add(Linea .getAreaInvestigacion().getDescripcion());
            arrayDatosLinea.add(Linea .getDescripcion());
           
            arrayLinea.add(arrayDatosLinea);
        }
        objbuilder.add("data", arrayLinea );
        JsonObject obj = objbuilder.build();
        response.setContentType("application/json");
       
        try (PrintWriter pw = new PrintWriter(response.getOutputStream())) {
            pw.println(obj.toString()); 
        }
    }

}

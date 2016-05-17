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
import java.util.Enumeration;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.json.Json;
import javax.json.JsonArrayBuilder;
import javax.json.JsonObject;
import javax.json.JsonObjectBuilder;
import javax.json.JsonValue;
import javax.servlet.RequestDispatcher;
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
@WebServlet(name = "PublicacionController", urlPatterns = {"/PublicacionController"})
@MultipartConfig
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
            case "modificarPublicacion":
                modificarPublicacion(request,response);
                break;
            case "eliminarPublicacion":eliminarPublicacion(request,response);
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
          Date fec = new Date(fe.parse(request.getParameter("fecha")).getTime());
        objPu= new Publicacion();
        objPu.getLineaInvestigacion().setIdLineaInvestigacion(Integer.parseInt(request.getParameter("linea")));
        objPu.setTitulo(request.getParameter("titulo"));
        objPu.setFechaPublicacion(fec);
        Publicacion publi=daote.crearleer(objPu);
        
    }

    private void ObtenerTodos(HttpServletRequest request, HttpServletResponse response) throws DAOException, ServletException, IOException {
        Publicacion[] puv = daote.leertodo();         
        JsonObjectBuilder objbuilder = Json.createObjectBuilder();  
        JsonArrayBuilder  arrayPublicaciones = Json.createArrayBuilder();        
        JsonArrayBuilder  arrayDatosPublicaciones; 
       for (Publicacion publi : puv) {
            //System.out.println(solicitud.toString());            
            arrayDatosPublicaciones = Json.createArrayBuilder();
            arrayDatosPublicaciones.add(publi.getIdPublicacion());
            arrayDatosPublicaciones.add(publi.getLineaInvestigacion().getAreaInvestigacion().getDescripcion());
            arrayDatosPublicaciones.add(publi.getLineaInvestigacion().getDescripcion());
            arrayDatosPublicaciones.add(publi.getTitulo());
           arrayDatosPublicaciones.add( publi.getFechaPublicacion().toString());  
            arrayDatosPublicaciones.add( publi.getFechaCarga().toString()); 
            arrayPublicaciones.add(arrayDatosPublicaciones);
        }
        objbuilder.add("data", arrayPublicaciones);
        JsonObject obj = objbuilder.build();
        response.setContentType("application/json");
       
        try (PrintWriter pw = new PrintWriter(response.getOutputStream())) {
            pw.println(obj.toString()); 
        }
}

    private void modificarPublicacion(HttpServletRequest request, HttpServletResponse response) throws DAOException, ParseException {
        System.out.println("entrando al servlet");
        
        Enumeration enumeration=request.getParameterNames();
        while (enumeration.hasMoreElements())
        {
        System.out.println(enumeration.nextElement());
        }
        SimpleDateFormat fe=new SimpleDateFormat("yyyy-MM-dd");
          Date fec = new Date(fe.parse(request.getParameter("fecha")).getTime());
        objPu = new Publicacion();
        
        objPu.setIdPublicacion(Integer.parseInt(request.getParameter("idPublicacion")));
       objPu.setTitulo(request.getParameter("titulo"));
        objPu.getLineaInvestigacion().setIdLineaInvestigacion(Integer.parseInt(request.getParameter("linea")));
        objPu.setFechaPublicacion(fec);
        
       Publicacion objPu1 = daote.modificarleer(objPu);
    }

    private void eliminarPublicacion(HttpServletRequest request, HttpServletResponse response) throws DAOException {
       int codigo=Integer.parseInt(request.getParameter("idpublicacion") );
       daote.eliminar(codigo);
    }
}

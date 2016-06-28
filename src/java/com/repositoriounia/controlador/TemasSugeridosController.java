/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.controlador;

import com.repositoriounia.dao.DAOException;
import com.repositoriounia.dao.TemasSugeridosDAO;
import com.repositoriounia.dao.TemasSugeridosDAOFactory;
import com.repositoriounia.modelo.Sexo;
import com.repositoriounia.modelo.Solicitante;
import com.repositoriounia.modelo.TemasSugeridos;
import com.repositoriounia.modelo.TipoEntidad;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "TemasSugeridosController", urlPatterns = {"/TemasSugeridosController"})
@MultipartConfig
public class TemasSugeridosController extends HttpServlet {
    private TemasSugeridos objTeSu;
    private TemasSugeridosDAOFactory fabricate;
    private TemasSugeridosDAO daote;

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
        fabricate=new TemasSugeridosDAOFactory();
        daote=fabricate.metodoDAO();
        switch(accion)
        {
            case "ObtenerTodos":ObtenerTodos(request,response);
                break;
            case "EliminarTema":EliminarTema(request,response);
                break;
            case "CrearSolicitud":CrearSolicitud(request,response);
                break;
            case "14":
                break;
            case "15":
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
            Logger.getLogger(TemasSugeridosController.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(TemasSugeridosController.class.getName()).log(Level.SEVERE, null, ex);
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
       TemasSugeridos[] tema = daote.leertodo();         
        JsonObjectBuilder objbuilder = Json.createObjectBuilder();  
        JsonArrayBuilder  arrayTemas = Json.createArrayBuilder();        
        JsonArrayBuilder  arrayDatosTemas; 
       for (TemasSugeridos temas : tema) {
            //System.out.println(solicitud.toString());            
            arrayDatosTemas = Json.createArrayBuilder();
            arrayDatosTemas.add(temas.getIdTemaSugerido());
            arrayDatosTemas.add(temas.getSolicitante().getNombres()+" "+temas.getSolicitante().getApellidos());
            arrayDatosTemas.add( temas.getFecha().toString());  
            arrayDatosTemas.add(temas.getTema());
            arrayDatosTemas.add(temas.getAreaTematica());
           
          
             arrayTemas.add(arrayDatosTemas);
        }
        objbuilder.add("data", arrayTemas);
        JsonObject obj = objbuilder.build();
        response.setContentType("application/json");
       
        try (PrintWriter pw = new PrintWriter(response.getOutputStream())) {
            pw.println(obj.toString()); 
        }
    }

    private void EliminarTema(HttpServletRequest request, HttpServletResponse response) throws DAOException {
       int codigo=Integer.parseInt(request.getParameter("idTemasSugeridos") );
       daote.eliminar(codigo);
    }

    private void CrearSolicitud(HttpServletRequest request, HttpServletResponse response) throws DAOException, IOException {
        objTeSu =new TemasSugeridos();
        objTeSu.getSolicitante().setNombres(request.getParameter("nombres").toUpperCase());
        objTeSu.getSolicitante().setApellidos(request.getParameter("apellidos").toUpperCase());
        objTeSu.getSolicitante().setDni(request.getParameter("dni"));
        objTeSu.getSolicitante().setTelefono(request.getParameter("telefono"));
        objTeSu.getSolicitante().setSexo(Sexo.valueOf(request.getParameter("sexo").toUpperCase()));
        objTeSu.getSolicitante().setDireccion(request.getParameter("direccion").toUpperCase());
        objTeSu.getSolicitante().setCorrero(request.getParameter("correo").toUpperCase());
        objTeSu.getSolicitante().setTipoEntidad(TipoEntidad.valueOf(request.getParameter("tipoentidad").toUpperCase()));
        objTeSu.getSolicitante().setEntidad(request.getParameter("entidad").toUpperCase());
        objTeSu.getSolicitante().setAreaTrabajo(request.getParameter("areatrabajo").toUpperCase());
        objTeSu.setAreaTematica(request.getParameter("areatematica").toUpperCase());
        objTeSu.setTema(request.getParameter("tema").toUpperCase().trim());
        TemasSugeridos temas=daote.crearleer(objTeSu);
        try (PrintWriter pw = new PrintWriter(response.getOutputStream())) {
                 if(temas==null){
                      pw.println(0); 
                 }else
                 {
                      pw.println(1); 
                 }
                 
           
        }
    }

}

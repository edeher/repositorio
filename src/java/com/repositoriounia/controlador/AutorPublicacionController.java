/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.controlador;

import com.repositoriounia.dao.AutorPublicacionDAO;
import com.repositoriounia.dao.AutorPublicacionDAOFactory;
import com.repositoriounia.dao.DAOException;
import com.repositoriounia.modelo.AutorPublicacion;
import com.repositoriounia.modelo.Sexo;
import com.repositoriounia.modelo.TipoAutor;
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
@WebServlet(name = "AutorPublicacionController", urlPatterns = {"/AutorPublicacionController"})
@MultipartConfig
public class AutorPublicacionController extends HttpServlet {
    private AutorPublicacion objAuPu;
    private AutorPublicacionDAOFactory fabricate;
    private AutorPublicacionDAO daote;

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
        fabricate=new AutorPublicacionDAOFactory();
        daote=fabricate.metodoDAO();
        
        switch(accion)
        {
            case "ObtenerTodosPorPublicacion":ObtenerTodosPorPublicacion(request,response);
                break;
            case "eliminarAutor":eliminarAutor(request,response);
                break;
            case "crearveryleer1":crearveryleer1(request,response);
                break;
            case "crearveryleer2":crearveryleer2(request,response);
                break;
            case "5":
                break;
            case "6":
                break;
            case "7":
                break;
            case "8":
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
            Logger.getLogger(AutorPublicacionController.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(AutorPublicacionController.class.getName()).log(Level.SEVERE, null, ex);
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

    private void ObtenerTodosPorPublicacion(HttpServletRequest request, HttpServletResponse response) throws DAOException, IOException {
        int idPublicacion=Integer.parseInt(request.getParameter("codigo"));
        AutorPublicacion[] Au = daote.leertodoporpublicacion(idPublicacion);
        JsonObjectBuilder objbuilder = Json.createObjectBuilder();  
        JsonArrayBuilder  arrayAutores = Json.createArrayBuilder();        
        JsonArrayBuilder  arrayDatosAutores; 
       for (AutorPublicacion Autor : Au) {
            //System.out.println(solicitud.toString());            
            arrayDatosAutores = Json.createArrayBuilder();
           
             arrayDatosAutores.add(Autor .getIdAutorPublicacion());
            arrayDatosAutores.add(Autor .getAutor().getNombres() );
            arrayDatosAutores.add( Autor .getAutor().getEspecialidad()); 
            arrayDatosAutores.add( Autor .getTipoautor().getNom()); 
            arrayAutores.add(arrayDatosAutores);
        }
        objbuilder.add("data", arrayAutores);
        JsonObject obj = objbuilder.build();
        response.setContentType("application/json");
       
        try (PrintWriter pw = new PrintWriter(response.getOutputStream())) {
            pw.println(obj.toString()); 
        }
    }

    private void eliminarAutor(HttpServletRequest request, HttpServletResponse response) throws DAOException {
        Enumeration enumeration=request.getParameterNames();
        while (enumeration.hasMoreElements())
        {
        System.out.println(enumeration.nextElement());
        }
        int codigo=Integer.parseInt(request.getParameter("codigo"));
       
       daote.eliminar(codigo); 
    }

    private void crearveryleer1(HttpServletRequest request, HttpServletResponse response) throws DAOException, IOException {
       objAuPu=new AutorPublicacion();
       objAuPu.getAutor().setIdAutor(Integer.parseInt(request.getParameter("idAutor1")));
       
       objAuPu.getPublicacion().setIdPublicacion(Integer.parseInt(request.getParameter("idPublicacion1")));
       
       objAuPu.setTipoautor(TipoAutor.valueOf(request.getParameter("tipoautor")));
       
        System.out.println("idAutor "+Integer.parseInt(request.getParameter("idAutor1")));
        System.out.println("idPublicacion "+Integer.parseInt(request.getParameter("idPublicacion1")));
        System.out.println("tipo autor "+TipoAutor.valueOf(request.getParameter("tipoautor")));
        
       AutorPublicacion autorpu=daote.crearverileer2(objAuPu);
       try (PrintWriter pw = new PrintWriter(response.getOutputStream())) {
                 if(autorpu==null){
                      pw.println(0); 
                 }else
                 {
                      pw.println(1); 
                 }
           
        }
    }

    private void crearveryleer2(HttpServletRequest request, HttpServletResponse response) throws DAOException, IOException {
       objAuPu=new AutorPublicacion();
       objAuPu.getAutor().setNombres(request.getParameter("nombres2").toString().toUpperCase());
       objAuPu.getAutor().setApellidos(request.getParameter("apellidos2").toString().toUpperCase());
       objAuPu.getAutor().setDni(request.getParameter("dni2"));
       objAuPu.getAutor().setSexo(Sexo.valueOf(request.getParameter("sexo2")));
       objAuPu.getAutor().setDireccion(request.getParameter("direccion2").toString().toUpperCase());
       objAuPu.getAutor().setTelefono(request.getParameter("telefono2"));
       objAuPu.getAutor().setCorrero(request.getParameter("correo2").toString().toUpperCase());
       objAuPu.getAutor().getEscuela().setIdEscuela(Integer.parseInt(request.getParameter("escuela")));
       objAuPu.getAutor().setProfesion(request.getParameter("profesion2").toString().toUpperCase());
       objAuPu.getAutor().setEspecialidad(request.getParameter("especialidad2").toString().toUpperCase());
       objAuPu.getAutor().setGrado(request.getParameter("grado2").toString().toUpperCase());
       objAuPu.getPublicacion().setIdPublicacion(Integer.parseInt(request.getParameter("idPublicacion2")));
       objAuPu.setTipoautor(TipoAutor.valueOf(request.getParameter("tipoautor2")));
       
       AutorPublicacion autorpu=daote.crearverileer(objAuPu);
       try (PrintWriter pw = new PrintWriter(response.getOutputStream())) {
                 if(autorpu==null){
                      pw.println(0); 
                 }else
                 {
                      pw.println(1); 
                 }
           
        }
    }

}

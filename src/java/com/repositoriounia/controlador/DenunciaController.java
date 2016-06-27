/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.controlador;

import com.repositoriounia.dao.DAOException;
import com.repositoriounia.dao.DenunciaDAO;
import com.repositoriounia.dao.DenunciaDAOFactory;
import com.repositoriounia.modelo.Autor;
import com.repositoriounia.modelo.Denuncia;
import com.repositoriounia.modelo.DescripDenun;
import com.repositoriounia.modelo.Sexo;
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
@WebServlet(name = "DenunciaController", urlPatterns = {"/DenunciaController"})
@MultipartConfig
public class DenunciaController extends HttpServlet {
    private Denuncia objDe;
    private DenunciaDAOFactory fabricate;
    private DenunciaDAO daote;
    
        

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
       String accion =request.getParameter("accion");
       fabricate =new  DenunciaDAOFactory();
       daote=fabricate.metodoDAO();
       switch(accion)
       {
           case "ObtenerTodos":ObtenerTodos(request,response);
               break;
           case "CrearDenuncia":CrearDenuncia(request,response);
               break;
           case "BuscarxidArchivo":BuscarxidArchivo(request,response);
               break;
           case "4":
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
            Logger.getLogger(DenunciaController.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(DenunciaController.class.getName()).log(Level.SEVERE, null, ex);
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
        Denuncia[] Denun = daote.leertodo();         
        JsonObjectBuilder objbuilder = Json.createObjectBuilder();  
        JsonArrayBuilder  arrayDenuncia = Json.createArrayBuilder();        
        JsonArrayBuilder  arrayDatosDenuncia; 
       for (Denuncia denuncia : Denun) {
            //System.out.println(solicitud.toString());            
             arrayDatosDenuncia = Json.createArrayBuilder();
             arrayDatosDenuncia.add(denuncia .getIdDenuncia());
              arrayDatosDenuncia.add(denuncia .getDenunciante().getNombres()+" "+denuncia .getDenunciante().getApellidos());
             arrayDatosDenuncia.add( denuncia .getFecha().toString()); 
            arrayDatosDenuncia.add(denuncia.getDescripdenun().getNom());
             arrayDatosDenuncia.add(denuncia .getArchivoPublicacion().getPublicacion().getTitulo() );
             arrayDatosDenuncia.add(denuncia.getArchivoPublicacion().getDescripcion().getNom() );
             
            arrayDenuncia.add( arrayDatosDenuncia);
        }
        objbuilder.add("data", arrayDenuncia);
        JsonObject obj = objbuilder.build();
        response.setContentType("application/json");
       
        try (PrintWriter pw = new PrintWriter(response.getOutputStream())) {
            pw.println(obj.toString()); 
        } 
    
    }

    private void CrearDenuncia(HttpServletRequest request, HttpServletResponse response) throws DAOException, IOException {
       objDe=new Denuncia();
        objDe.getDenunciante().setNombres(request.getParameter("nombres"));
        objDe.getDenunciante().setApellidos(request.getParameter("apellidos"));
        objDe.getDenunciante().setDni(request.getParameter("dni"));
        objDe.getDenunciante().setSexo(Sexo.valueOf(request.getParameter("sexo")));
        objDe.getDenunciante().setDireccion(request.getParameter("direccion"));
        objDe.getDenunciante().setTelefono(request.getParameter("telefono"));
        objDe.getDenunciante().setCorrero(request.getParameter("correo"));
        objDe.getArchivoPublicacion().setIdArchivoPublicacion(Integer.parseInt(request.getParameter("idArchivoPublicacion")));
        objDe.setDescripdenun(DescripDenun.valueOf(request.getParameter("descripcion")));
        Denuncia denun=daote.crearleer(objDe);
         try (PrintWriter pw = new PrintWriter(response.getOutputStream())) {
                 if(denun==null){
                      pw.println(0); 
                 }else
                 {
                     int id=denun.getIdDenuncia();
                      pw.println(id); 
                 }
                 
           
        }       
        
        
        
    }

    private void BuscarxidArchivo(HttpServletRequest request, HttpServletResponse response) throws DAOException, IOException {
        int idArchivoPublicacion=Integer.parseInt(request.getParameter("idArchivoPublicacion"));
       Denuncia[] Denun = daote.leertodoxarchivo(idArchivoPublicacion);
        JsonObjectBuilder objbuilder = Json.createObjectBuilder();  
        JsonArrayBuilder  arrayDenuncia = Json.createArrayBuilder();        
        JsonArrayBuilder  arrayDatosDenuncia; 
       for (Denuncia denuncia : Denun) {
            //System.out.println(solicitud.toString());            
             arrayDatosDenuncia = Json.createArrayBuilder();
             arrayDatosDenuncia.add(denuncia .getIdDenuncia());
              arrayDatosDenuncia.add(denuncia .getDenunciante().getNombres()+" "+denuncia .getDenunciante().getApellidos());
             arrayDatosDenuncia.add( denuncia .getFecha().toString()); 
            arrayDatosDenuncia.add(denuncia.getDescripdenun().getNom());
             arrayDatosDenuncia.add(denuncia .getArchivoPublicacion().getPublicacion().getTitulo() );
             arrayDatosDenuncia.add(denuncia.getArchivoPublicacion().getDescripcion().getNom() );
             
            arrayDenuncia.add( arrayDatosDenuncia);
        }
        objbuilder.add("data", arrayDenuncia);
        JsonObject obj = objbuilder.build();
        response.setContentType("application/json");
       
        try (PrintWriter pw = new PrintWriter(response.getOutputStream())) {
            pw.println(obj.toString()); 
        } 
    }

}

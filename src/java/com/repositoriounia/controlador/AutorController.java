/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.controlador;

import com.repositoriounia.dao.AutorDAO;
import com.repositoriounia.dao.AutorDAOFactory;
import com.repositoriounia.dao.DAOException;
import com.repositoriounia.modelo.Autor;
import com.repositoriounia.modelo.DescripcionArchivo;
import com.repositoriounia.modelo.Facultad;
import com.repositoriounia.modelo.Publicacion;
import com.repositoriounia.modelo.Sexo;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Enumeration;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.json.Json;
import javax.json.JsonArrayBuilder;
import javax.json.JsonObject;
import javax.json.JsonObjectBuilder;
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
@WebServlet(name = "AutorController", urlPatterns = {"/AutorController"})
@MultipartConfig
public class AutorController extends HttpServlet {
    private Autor objAu;
    private AutorDAOFactory fabricate;
    private AutorDAO daote;
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
            throws ServletException, IOException, DAOException {
        response.setContentType("text/html;charset=UTF-8");
        String accion=request.getParameter("accion");
        fabricate=new AutorDAOFactory();
        daote=fabricate.metodoDAO();
        switch(accion)
        {
            case "buscarpordni":
                buscarpordni(request,response);
                break;
            case "ObtenerTodos":
                ObtenerTodos(request,response);
                break;
            case "crearInvestigador":crearInvestigador(request,response);
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
            Logger.getLogger(AutorController.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(AutorController.class.getName()).log(Level.SEVERE, null, ex);
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

    private void buscarpordni(HttpServletRequest request, HttpServletResponse response) throws ServletException, DAOException, IOException {
       
        String dni=request.getParameter("dni").toUpperCase();
        int idPublicacion=Integer.parseInt(request.getParameter("idPublicacion"));
        System.out.println("llego dni="+dni+", idpublicacion ="+idPublicacion);
        
       Autor  Au=daote.leerxdni(dni);
        
        if(Au!=null){
            System.out.println(Au.toString());
          request.setAttribute("Au",Au);
        rd = getServletContext().getRequestDispatcher("/Prototipos/crearAutor.jsp?val=nue1&idPublicacion="+idPublicacion);
        rd.forward(request, response);
        
        }
        else 
        {
                System.out.println("es nulo");
        rd = getServletContext().getRequestDispatcher("/Prototipos/crearAutor.jsp?val=nue&idPublicacion="+idPublicacion);
        rd.forward(request, response);
        }
    }

    private void ObtenerTodos(HttpServletRequest request, HttpServletResponse response) throws IOException, DAOException {
        Autor[] Au = daote.leertodo();         
        JsonObjectBuilder objbuilder = Json.createObjectBuilder();  
        JsonArrayBuilder  arrayAutores = Json.createArrayBuilder();        
        JsonArrayBuilder  arrayDatosAutores; 
       for (Autor Autor : Au) {
            //System.out.println(solicitud.toString());            
            arrayDatosAutores = Json.createArrayBuilder();
            arrayDatosAutores.add(Autor .getIdAutor());
             arrayDatosAutores.add(Autor .getProfesion());
            arrayDatosAutores.add( Autor .getGrado()); 
            arrayDatosAutores.add(Autor .getNombres()+" "+Autor.getApellidos());
            arrayDatosAutores.add(Autor .getEscuela().getFacultad().getDescripcion());
            arrayDatosAutores.add(Autor .getEscuela().getDescripcion());
            arrayDatosAutores.add( Autor .getEspecialidad()); 
            arrayAutores.add(arrayDatosAutores);
        }
        objbuilder.add("data", arrayAutores);
        JsonObject obj = objbuilder.build();
        response.setContentType("application/json");
       
        try (PrintWriter pw = new PrintWriter(response.getOutputStream())) {
            pw.println(obj.toString()); 
        }
    }

    private void crearInvestigador(HttpServletRequest request, HttpServletResponse response) throws DAOException {
        objAu = new Autor();
        Enumeration enumeration=request.getParameterNames();
        while (enumeration.hasMoreElements())
        {
        System.out.println(enumeration.nextElement());
        }
       
               
       objAu.setNombres(request.getParameter("nombres").toString().toUpperCase());
       objAu.setApellidos(request.getParameter("apellidos").toString().toUpperCase());
       objAu.setCorrero(request.getParameter("correo"));
       objAu.setDireccion(request.getParameter("direccion").toString().toUpperCase());
       objAu.setDni(request.getParameter("dni").toString().toUpperCase());
       objAu.setSexo(Sexo.valueOf(request.getParameter("sexo")));
       objAu.getEscuela().setIdEscuela(Integer.parseInt(request.getParameter("escuela")));
       objAu.setEspecialidad(request.getParameter("especialidad").toString().toUpperCase());
       objAu.setProfesion(request.getParameter("profesion").toString().toUpperCase());
       objAu.setGrado(request.getParameter("grado").toString().toUpperCase());
       objAu.setDni(request.getParameter("dni").toString().toUpperCase());
       objAu.setTelefono(request.getParameter("telefono"));
       
       
       daote.crear(objAu);
    }
}

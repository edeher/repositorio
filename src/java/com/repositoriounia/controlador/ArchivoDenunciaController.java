/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.controlador;

import com.repositoriounia.dao.ArchivoDenunciaDAO;
import com.repositoriounia.dao.ArchivoDenunciaDAOFactory;
import com.repositoriounia.dao.DAOException;
import com.repositoriounia.modelo.ArchivoDenuncia;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
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
import javax.servlet.http.Part;

/**
 *
 * @author Mi Laptop
 */
@WebServlet(name = "ArchivoDenunciaController", urlPatterns = {"/ArchivoDenunciaController"})
@MultipartConfig
public class ArchivoDenunciaController extends HttpServlet {
    private ArchivoDenuncia objArDE;
    private ArchivoDenunciaDAOFactory fabricate;
    private ArchivoDenunciaDAO daote;
    private PrintWriter out;

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
       
       String accion=request.getParameter("accion");
       fabricate=new ArchivoDenunciaDAOFactory();
       daote=fabricate.metodoDAO();
       
        System.out.println("Archivodenuncia controller");
        System.out.println("==============================");
        Enumeration enumeration = request.getParameterNames();
        while (enumeration.hasMoreElements()) {
            System.out.println(" enum" + enumeration.nextElement());
        }
        
       ArchivoDenuncia objArDE=new ArchivoDenuncia();
       switch (accion)
       {
            case "cargarArchivo":                
                cargarArchivo(request, response);  
                out = response.getWriter();
                break;
            case "ObtenerArchivos":
                System.out.println("ObtenerArchivos.....");
                String json = ObtenerArchivos(request, response);
                response.setContentType("application/json");
                out = response.getWriter();
                out.println(json);
                break;
            case "verArchivo":
                System.out.println("verArchivo.....");
                verArchivo(request, response);
                break;
           case "4":break;
           case "5":break;
           case "6":break;
           case "7":break;
           case "8":break;
           
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
            Logger.getLogger(ArchivoDenunciaController.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(ArchivoDenunciaController.class.getName()).log(Level.SEVERE, null, ex);
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

    private void cargarArchivo(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException, DAOException {
         objArDE = new ArchivoDenuncia();
        System.out.println("cargando archivo..en metodo..");
        Part filePart = request.getPart("archivo");
        InputStream imput = filePart.getInputStream();
        ByteArrayOutputStream output = new ByteArrayOutputStream();
        byte[] buffer = new byte[10485760];
        for (int length = 0; (length = imput.read(buffer)) > 0;) {
            output.write(buffer, 0, length);
        }     
       
        objArDE.setArchivo(output.toByteArray());
        
        objArDE.setUrlLocal(request.getParameter("urllocal"));
        objArDE.setUrlWeb(request.getParameter("urlweb"));
        
         int codigo=Integer.parseInt(request.getParameter("idDenuncia"));
        System.out.println("codigo :"+codigo);
        objArDE.getDenuncia().setIdDenuncia(Integer.parseInt(request.getParameter("idDenuncia")));
        
        ArchivoDenuncia objArDE1 = daote.crearleer(objArDE);
        try (PrintWriter pw = new PrintWriter(response.getOutputStream())) {
                 if(objArDE1==null){
                      pw.println(0); 
                 }else
                 {
                      pw.println(1); 
                 }
                 
           
        }
    }

    private String ObtenerArchivos(HttpServletRequest request, HttpServletResponse response) throws DAOException, IOException {
        int idDenuncia=Integer.parseInt(request.getParameter("codigo"));
          System.out.println("codigo "+idDenuncia);
        ArchivoDenuncia[] puv = daote.leertodo(idDenuncia);
        
          for(ArchivoDenuncia usuv1:puv)
	  {
	      
	      System.out.println(" "+usuv1.toString());
	  
	  }
        
        JsonObjectBuilder objbuilder = Json.createObjectBuilder();  
        JsonArrayBuilder  arrayArchivoPublicacion = Json.createArrayBuilder();        
        JsonArrayBuilder  arrayDatosArchivoPublicacion; 
        
       for (ArchivoDenuncia publi : puv) {
            //System.out.println(solicitud.toString());            
            arrayDatosArchivoPublicacion = Json.createArrayBuilder();
            arrayDatosArchivoPublicacion.add(publi.getIdArchivoDenuncia());
            arrayDatosArchivoPublicacion.add(publi.getDenuncia().getDescripdenun().getNom());
            
          
            arrayArchivoPublicacion.add(arrayDatosArchivoPublicacion);
        }
        objbuilder.add("data", arrayArchivoPublicacion);
        JsonObject obj = objbuilder.build();        
        return obj.toString();
       
    }

    private void verArchivo(HttpServletRequest request, HttpServletResponse response) throws DAOException, IOException {
        int codigo = Integer.parseInt(request.getParameter("idDenuncia"));
        
        OutputStream pdfsa;
        try (InputStream pdf = daote.ArchivoDenuncia2(codigo)) {
            pdfsa = response.getOutputStream();
            byte[] buffer2 = new byte[10485760];
            for (;;) {
                int nbytes = pdf.read(buffer2);
                if (nbytes == -1) {
                    break;
                }
                pdfsa.write(buffer2, 0, nbytes);
            }
            response.setContentType("application/pdf");
        }
        pdfsa.flush();
        pdfsa.close();
    }

}

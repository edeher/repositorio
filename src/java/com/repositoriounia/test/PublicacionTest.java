/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.test;

import com.repositoriounia.dao.DAOException;
import com.repositoriounia.dao.PublicacionDAO;
import com.repositoriounia.dao.PublicacionDAOFactory;
import com.repositoriounia.modelo.Publicacion;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author Mi Laptop
 */
public class PublicacionTest {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws DAOException{
        // TODO code application logic here
//        crearpublicacion();
//        modificarpublicacion();
//        eliminarpublicacion();
//        leerpublicacion();
        leertodo();
    }
    public static void crearpublicacion() throws DAOException
    {
        PublicacionDAOFactory fabricate= new PublicacionDAOFactory();
        PublicacionDAO daote= fabricate.metodoDAO();
          Publicacion objPu = new Publicacion();
          
          try{
          SimpleDateFormat fe=new SimpleDateFormat("yyyy-MM-dd");
          Date fec = new Date(fe.parse("2016-02-20").getTime());
          int idLineaInvestigacion=1;
                objPu.setTitulo("buqueda de algas");
                objPu.setFechaPublicacion(fec);
             
              
              daote.crear(objPu, idLineaInvestigacion);
               
            } 
                          catch (ParseException e) {
			System.out.println("Fecha invalida: " + e.getMessage());
                        }
    }
     public static void modificarpublicacion() throws DAOException
    {
        PublicacionDAOFactory fabricate= new PublicacionDAOFactory();
        PublicacionDAO daote= fabricate.metodoDAO();
          Publicacion objPu = new Publicacion();
          
          try{
          SimpleDateFormat fe=new SimpleDateFormat("yyyy-MM-dd");
          Date fec = new Date(fe.parse("2016-02-20").getTime());
          int idLineaInvestigacion=1;
          objPu.setIdPublicacion(1);
                objPu.setTitulo("buqueda de algas en pucallpa");
                objPu.setFechaCarga(fec);
                objPu.setFechaPublicacion(fec);
             
              
              daote.modificar(objPu, idLineaInvestigacion);
               
            } 
                          catch (ParseException e) {
			System.out.println("Fecha invalida: " + e.getMessage());
                        }
    }
      public static void eliminarpublicacion()throws DAOException
	{
		PublicacionDAOFactory fabricate= new PublicacionDAOFactory();
                PublicacionDAO daote= fabricate.metodoDAO();
	 daote.eliminar(8);
	 System.out.println("se elimino correctamente");
	 
	    
	}
       public static void leerpublicacion()throws DAOException
	{
		PublicacionDAOFactory fabricate= new PublicacionDAOFactory();
                PublicacionDAO daote= fabricate.metodoDAO();
               
	   Publicacion publica=daote.leerxid(3);
	 System.out.println(" "+publica.toString());
        
	    
	}
       public static void leertodo()throws DAOException
	{
		PublicacionDAOFactory fabricate= new PublicacionDAOFactory();
                PublicacionDAO daote= fabricate.metodoDAO();
	 Publicacion[] usuv=daote.leertodo();
	  
	  for(Publicacion usuv1:usuv)
	  {
	      
	      System.out.println(" "+usuv1.toString());
	  
	  }
	 
        } 
}

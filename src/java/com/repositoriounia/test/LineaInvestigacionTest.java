/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.test;

import com.repositoriounia.dao.DAOException;
import com.repositoriounia.dao.LineaInvestigacionDAO;
import com.repositoriounia.dao.LineaInvestigacionDAOFactory;
import com.repositoriounia.modelo.LineaInvestigacion;

/**
 *
 * @author Mi Laptop
 */
public class LineaInvestigacionTest {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws DAOException{
        // TODO code application logic here
//        crearlinea();
//        modificarlinea();
//        eliminarlinea();
//        leer();
        leertodo();
    }
     public static void crearlinea() throws DAOException
    {
        LineaInvestigacionDAOFactory fabricate= new  LineaInvestigacionDAOFactory();
         LineaInvestigacionDAO daote= fabricate.metodoDAO();
         LineaInvestigacion objLi=new LineaInvestigacion();
          int idAreaInvestigacion=1;
             objLi.setDescripcion("plantas plantotas");
              
              daote.crear(objLi,idAreaInvestigacion);
               
           
    }
     public static void modificarlinea() throws DAOException
    {
        LineaInvestigacionDAOFactory fabricate= new  LineaInvestigacionDAOFactory();
         LineaInvestigacionDAO daote= fabricate.metodoDAO();
         LineaInvestigacion objLi=new LineaInvestigacion();
          int idAreaInvestigacion=1;
             objLi.setIdLineaInvestigacion(1);
             objLi.setDescripcion("plantas plantotas plantitas");
              
              daote.modificar(objLi,idAreaInvestigacion);
               
           
    }
      public static void eliminarlinea() throws DAOException
    {
          LineaInvestigacionDAOFactory fabricate= new  LineaInvestigacionDAOFactory();
          LineaInvestigacionDAO daote= fabricate.metodoDAO();
          
          int idLineaInvestigacion=6;
              
              daote.eliminar(idLineaInvestigacion);
   
    }
      public static void leer()throws DAOException
	{
		   LineaInvestigacionDAOFactory fabricate= new  LineaInvestigacionDAOFactory();
                   LineaInvestigacionDAO daote= fabricate.metodoDAO();
       
               
	  LineaInvestigacion objEs=daote.leerxid(3);
	 System.out.println(" "+objEs.toString());
        
	    
	}
      public static void leertodo()throws DAOException
	{
		   LineaInvestigacionDAOFactory fabricate= new  LineaInvestigacionDAOFactory();
                   LineaInvestigacionDAO daote= fabricate.metodoDAO();
	 LineaInvestigacion[] usuv=daote.leertodo();
	  
	  for(LineaInvestigacion usuv1:usuv)
	  {
	      
	      System.out.println(" "+usuv1.toString());
	  
	  }
	 
        } 
}

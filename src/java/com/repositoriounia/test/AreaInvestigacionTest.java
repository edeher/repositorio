/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.test;

import com.repositoriounia.dao.AreaInvestigacionDAO;
import com.repositoriounia.dao.AreaInvestigacionDAOFactory;
import com.repositoriounia.dao.DAOException;
import com.repositoriounia.modelo.AreaInvestigacion;

/**
 *
 * @author Mi Laptop
 */
public class AreaInvestigacionTest {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args)throws DAOException{
        // TODO code application logic here
//        crearAreaInvestigacion();
//        modificarAreaInvestigacion();
//        eliminarAreaInvestigacion();
//        leerAreaInvestigacion();
        leertodo();
        
    }
     public static void crearAreaInvestigacion() throws DAOException
    {
        AreaInvestigacionDAOFactory fabricate= new AreaInvestigacionDAOFactory();
        AreaInvestigacionDAO daote= fabricate.metodoDAO();
           AreaInvestigacion objarea=new AreaInvestigacion();
           
             
               
              objarea.setDescripcion("ciencias matematicas");
             
              
              
        daote.crear(objarea);
        
    }
     public static void modificarAreaInvestigacion() throws DAOException
    {
        AreaInvestigacionDAOFactory fabricate= new AreaInvestigacionDAOFactory();
        AreaInvestigacionDAO daote= fabricate.metodoDAO();
           AreaInvestigacion objarea=new AreaInvestigacion();
           
             
               objarea.setIdAreaInvestigacion(3);
              objarea.setDescripcion("ciencias matematicas y fisica");
             
              
              
        daote.modificar(objarea);
        
    }
       public static void eliminarAreaInvestigacion()throws DAOException
	{
		  AreaInvestigacionDAOFactory fabricate= new AreaInvestigacionDAOFactory();
                    AreaInvestigacionDAO daote= fabricate.metodoDAO();
       
              
	 daote.eliminar(11);
	 System.out.println("se elimino correctamente");
	 
	    
	}
       public static void leerAreaInvestigacion()throws DAOException
	{
		 AreaInvestigacionDAOFactory fabricate= new AreaInvestigacionDAOFactory();
                 AreaInvestigacionDAO daote= fabricate.metodoDAO();
       
               
	   AreaInvestigacion area=daote.leerxid(3);
	 System.out.println(" "+area.toString());
        
	    
	}
         public static void leertodo()throws DAOException
	{
		 AreaInvestigacionDAOFactory fabricate= new AreaInvestigacionDAOFactory();
                 AreaInvestigacionDAO daote= fabricate.metodoDAO();
	 
	 AreaInvestigacion[] usuv=daote.leertodo();
	  
	  for(AreaInvestigacion usuv1:usuv)
	  {
	      
	      System.out.println(" "+usuv1.toString());
	  
	  }
	 
        } 
}

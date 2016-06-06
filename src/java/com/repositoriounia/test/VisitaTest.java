/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.test;

import com.repositoriounia.dao.DAOException;
import com.repositoriounia.dao.VisitaDAO;
import com.repositoriounia.dao.VisitaDAOFactory;
import com.repositoriounia.modelo.Visita;

/**
 *
 * @author Mi Laptop
 */
public class VisitaTest {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args)throws DAOException{
        // TODO code application logic here
//        crearVisita();
//        modificarVisita();
//        eliminarlinea();
//        leer();
//        leertodo();
        top5();
        
    }
    public static void crearVisita() throws DAOException
    {
        VisitaDAOFactory fabricate= new  VisitaDAOFactory();
         VisitaDAO daote= fabricate.metodoDAO();
        
          int idArchivoPublicacion=3;
            
              
              daote.crear(idArchivoPublicacion);
               
           
    }
     public static void modificarVisita() throws DAOException
    {
        VisitaDAOFactory fabricate= new  VisitaDAOFactory();
         VisitaDAO daote= fabricate.metodoDAO();
        Visita objVi =new Visita();
         
          objVi.getArchivoPublicacion().setIdArchivoPublicacion(8);
            objVi.setIdVisita(3);
              
              daote.modificar(objVi);
               
           
    }
      public static void eliminarlinea() throws DAOException
    {
          VisitaDAOFactory fabricate= new  VisitaDAOFactory();
         VisitaDAO daote= fabricate.metodoDAO();   
          
          int idVisita=6;
              
              daote.eliminar(idVisita);
   
    }
      public static void leer()throws DAOException
	{
		    VisitaDAOFactory fabricate= new  VisitaDAOFactory();
         VisitaDAO daote= fabricate.metodoDAO();
       
               
	  Visita objEs=daote.leerxid(9);
	 System.out.println(" "+objEs.toString());
        
	    
	}
      public static void leertodo()throws DAOException
	{
		   VisitaDAOFactory fabricate= new  VisitaDAOFactory();
         VisitaDAO daote= fabricate.metodoDAO();
	 Visita[] usuv=daote.leertodo();
	  
	  for(Visita usuv1:usuv)
	  {
	      
	      System.out.println(" "+usuv1.toString());
	  
	  }
	 
        } 
       public static void top5()throws DAOException
	{
		   VisitaDAOFactory fabricate= new  VisitaDAOFactory();
         VisitaDAO daote= fabricate.metodoDAO();
	 Visita[] usuv=daote.top5();
	  
	  for(Visita usuv1:usuv)
	  {
	      
	      System.out.println(" "+usuv1.toString2());
	  
	  }
	 
        } 
}

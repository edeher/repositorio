/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.test;

import com.repositoriounia.dao.ArchivoDenunciaDAO;
import com.repositoriounia.dao.ArchivoDenunciaDAOFactory;
import com.repositoriounia.dao.DAOException;
import com.repositoriounia.modelo.ArchivoDenuncia;

/**
 *
 * @author Mi Laptop
 */
public class ArchivoDenunciaTest {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws DAOException{
        // TODO code application logic here
//        creararchivodenuncia();
//        modificarchivodenuncia();
//        eliminararchivodenuncia();
//        leerarchivodenuncia();
        leertodo2();
    }
    
     public static void creararchivodenuncia() throws DAOException
    {
        ArchivoDenunciaDAOFactory fabricate= new ArchivoDenunciaDAOFactory();
        ArchivoDenunciaDAO daote= fabricate.metodoDAO();
       
        
        
       
        ArchivoDenuncia archidenu= new ArchivoDenuncia();
                int codigo=1;
                 archidenu.setUrlLocal("wwwwww");
                 archidenu.setUrlWeb("https:");
		 
		 
        
      
        daote.crear(archidenu,codigo);
        
    }
     public static void modificarchivodenuncia() throws DAOException
    {
        ArchivoDenunciaDAOFactory fabricate= new ArchivoDenunciaDAOFactory();
        ArchivoDenunciaDAO daote= fabricate.metodoDAO();
       
        
        
       
        ArchivoDenuncia archidenu= new ArchivoDenuncia();
               int codigo=3;
                 archidenu.setIdArchivoDenuncia(2);
                 archidenu.setUrlLocal("wwwwwweeeee");
                 archidenu.setUrlWeb("httpswwwwwww:");
         daote.modificar(archidenu,codigo);
        
    }
     public static void eliminararchivodenuncia()throws DAOException
	{
		 ArchivoDenunciaDAOFactory fabricate= new ArchivoDenunciaDAOFactory();
                ArchivoDenunciaDAO daote= fabricate.metodoDAO();
              
	 daote.eliminar(8);
	 System.out.println("se elimino correctamente");
	 
	    
	}
     public static void leerarchivodenuncia()throws DAOException
	{
		  ArchivoDenunciaDAOFactory fabricate= new ArchivoDenunciaDAOFactory();
                  ArchivoDenunciaDAO daote= fabricate.metodoDAO();
               
	   ArchivoDenuncia archinun=daote.leerxid(3);
	 System.out.println(" "+archinun.toString());
	    
	}
     
     public static void leertodo()throws DAOException
	{
		ArchivoDenunciaDAOFactory fabricate= new ArchivoDenunciaDAOFactory();
                  ArchivoDenunciaDAO daote= fabricate.metodoDAO();
               
                  
		
	 
	 ArchivoDenuncia[] usuv=daote.leertodo();
	  
	  for(ArchivoDenuncia usuv1:usuv)
	  {
	      
	      System.out.println(" "+usuv1.toString());
	  
	  }
	 
        } 
     public static void leertodo2()throws DAOException
	{
		ArchivoDenunciaDAOFactory fabricate= new ArchivoDenunciaDAOFactory();
                  ArchivoDenunciaDAO daote= fabricate.metodoDAO();
               
                  
		
	 
	 ArchivoDenuncia[] usuv=daote.leertodo(3);
	  
	  for(ArchivoDenuncia usuv1:usuv)
	  {
	      
	      System.out.println(" "+usuv1.toString());
	  
	  }
	 
        } 
}

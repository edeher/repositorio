/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.test;

import com.repositoriounia.dao.ArchivoPublicacionDAO;
import com.repositoriounia.dao.ArchivoPublicacionDAOFactory;
import com.repositoriounia.dao.DAOException;
import com.repositoriounia.modelo.ArchivoPublicacion;
import com.repositoriounia.modelo.DescripcionArchivo;

/**
 *
 * @author Mi Laptop
 */
public class ArchivoPublicacionTest {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws DAOException{
        // TODO code application logic here
//        creararchivopublicacion();
//        modificararchivopublicacion();
//        eliminararchivopublicacion();
        leerporidpublicacion();
//leerxid();
//leertodo();
    }
    
    public static void creararchivopublicacion() throws DAOException
    {
        ArchivoPublicacionDAOFactory fabricate= new ArchivoPublicacionDAOFactory();
        ArchivoPublicacionDAO daote= fabricate.metodoDAO();
       
        
        
       
        ArchivoPublicacion archiPu= new ArchivoPublicacion();
                int codigo=1;
                archiPu.getPublicacion().setIdPublicacion(1);
                archiPu.setDescripcion(DescripcionArchivo.TE);
                 archiPu.setUrlLocal("wwwwww");
                 archiPu.setUrlWeb("https:");
		 
		 
        
      
        daote.crear(archiPu);
        
    }
    public static void modificararchivopublicacion() throws DAOException
    {
        ArchivoPublicacionDAOFactory fabricate= new ArchivoPublicacionDAOFactory();
        ArchivoPublicacionDAO daote= fabricate.metodoDAO();
       
        
        
       
        ArchivoPublicacion archiPu= new ArchivoPublicacion();
                int codigo=2;
                archiPu.setIdArchivoPublicacion(1);
                archiPu.setDescripcion(DescripcionArchivo.INPIN);
                 archiPu.setUrlLocal("wwwwwwxxxxx");
                 archiPu.setUrlWeb("httpsxxxxxxxx:");
		 
		 
        
      
        daote.modificar(archiPu,codigo);
        
    }
    public static void eliminararchivopublicacion()throws DAOException
	{
		ArchivoPublicacionDAOFactory fabricate= new ArchivoPublicacionDAOFactory();
        ArchivoPublicacionDAO daote= fabricate.metodoDAO();
       
              
	 daote.eliminar(5);
	 System.out.println("se elimino correctamente");
	 
	    
	}
      public static void leerxid()throws DAOException
	{
		 ArchivoPublicacionDAOFactory fabricate= new ArchivoPublicacionDAOFactory();
        ArchivoPublicacionDAO daote= fabricate.metodoDAO();
       
               
	   ArchivoPublicacion archinun=daote.leerxid(1);
	 System.out.println(" "+archinun.toString());
        
	    
	}
      
       public static void leerporidpublicacion()throws DAOException
	{
		ArchivoPublicacionDAOFactory fabricate= new ArchivoPublicacionDAOFactory();
        ArchivoPublicacionDAO daote= fabricate.metodoDAO();
       
               
                  
		
	 
	 ArchivoPublicacion[] usuv=daote.leertodoidpublicacion(1);
	  
	  for(ArchivoPublicacion usuv1:usuv)
	  {
	      
	      System.out.println(" "+usuv1.toString());
	  
	  }
	 
        } 
       public static void leertodo()throws DAOException
	{
		ArchivoPublicacionDAOFactory fabricate= new ArchivoPublicacionDAOFactory();
                ArchivoPublicacionDAO daote= fabricate.metodoDAO();
               
                  
		
	 
	 ArchivoPublicacion[] usuv=daote.leertodo();
	  
	  for(ArchivoPublicacion usuv1:usuv)
	  {
	      
	      System.out.println(" "+usuv1.toString());
	  
	  }
	 
        } 
}

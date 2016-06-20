/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.test;

import com.repositoriounia.dao.AutorPublicacionDAO;
import com.repositoriounia.dao.AutorPublicacionDAOFactory;
import com.repositoriounia.dao.DAOException;
import com.repositoriounia.modelo.AutorPublicacion;
import com.repositoriounia.modelo.Sexo;
import com.repositoriounia.modelo.TipoAutor;

/**
 *
 * @author Mi Laptop
 */
public class AutorPublicacionTest {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws DAOException {
        // TODO code application logic here
        crearporids();
//        crearconautor();
//        leerXID();
//        leerXIDpubliPrin();
//        leertodoPORPUBLICACION();
//        leertodoPORAUTOR();
//        leertodo();
//        leerXidAutoryIdPublicacion();
    }
    public static void crearporids()throws DAOException
    {
             AutorPublicacionDAOFactory fabricate= new AutorPublicacionDAOFactory();
		AutorPublicacionDAO daote= fabricate.metodoDAO();
                AutorPublicacion objAuP=new AutorPublicacion();
                
               objAuP.getAutor().setIdAutor(22);
               objAuP.getPublicacion().setIdPublicacion(6);
               objAuP.setTipoautor(TipoAutor.COLABORADOR);
               
                AutorPublicacion per=daote.crearverileer2(objAuP);
	         System.out.println(" "+per.toString());
    
    
    }
    public static void crearconautor()throws DAOException
    {
             AutorPublicacionDAOFactory fabricate= new AutorPublicacionDAOFactory();
		AutorPublicacionDAO daote= fabricate.metodoDAO();
                AutorPublicacion objAuP=new AutorPublicacion();
                
               objAuP.getAutor().setNombres("edeher");
               objAuP.getAutor().setApellidos("ponce");
               objAuP.getAutor().setDni("43056761");
               objAuP.getAutor().setSexo(Sexo.M);
              objAuP.getAutor().setDireccion("aca toy");
              objAuP.getAutor().setTelefono("942154007");
               objAuP.getAutor().setCorrero("edercin@qqqqq");
               
               objAuP.getAutor().getEscuela().setIdEscuela(2);
                objAuP.getAutor().setProfesion("agroforestal");
               objAuP.getAutor().setEspecialidad(" fauna");
               objAuP.getAutor().setGrado("magister");
               
                objAuP.getPublicacion().setIdPublicacion(2);
               objAuP.setTipoautor(TipoAutor.TESISTA);
               
                              AutorPublicacion per=daote.crearverileer(objAuP);
	         System.out.println(" "+per.toString());
    
    
    }
    public static void leerXID()throws DAOException
	{
		AutorPublicacionDAOFactory fabricate= new AutorPublicacionDAOFactory();
		AutorPublicacionDAO daote= fabricate.metodoDAO();
	 
	   AutorPublicacion per=daote.leerxid(1);
	 System.out.println(" "+per.toString());
	    
	}
     public static void leerXIDpubliPrin()throws DAOException
	{
		AutorPublicacionDAOFactory fabricate= new AutorPublicacionDAOFactory();
		AutorPublicacionDAO daote= fabricate.metodoDAO();
	 
	   AutorPublicacion per=daote.leerxidPubliPrincipal(2);
	 System.out.println(" "+per.toString());
	    
	}
    public static void leertodoPORPUBLICACION()throws DAOException
	{
		AutorPublicacionDAOFactory fabricate= new AutorPublicacionDAOFactory();
		 AutorPublicacionDAO daote= fabricate.metodoDAO();
	 
	  AutorPublicacion[] solv=daote.leertodoporpublicacion(2);
	  
	  for(AutorPublicacion solv1:solv )
	  {
	      
	      System.out.println(" "+solv1.toString());
	  
	  }
	 
	 
	    
	}
    public static void leertodoPORAUTOR()throws DAOException
	{
		AutorPublicacionDAOFactory fabricate= new AutorPublicacionDAOFactory();
		 AutorPublicacionDAO daote= fabricate.metodoDAO();
	 
	  AutorPublicacion[] solv=daote.leertodoporautor(6);
	  
	  for(AutorPublicacion solv1:solv )
	  {
	      
	      System.out.println(" "+solv1.toString());
	  
	  }
	 
	 
	    
	}
     public static void leertodo()throws DAOException
	{
		AutorPublicacionDAOFactory fabricate= new AutorPublicacionDAOFactory();
		 AutorPublicacionDAO daote= fabricate.metodoDAO();
	 
	  AutorPublicacion[] solv=daote.leertodo();
	  
	  for(AutorPublicacion solv1:solv )
	  {
	      
	      System.out.println(" "+solv1.toString());
	  
	  }
	 
	 
	    
	}
     public static void leerXidAutoryIdPublicacion()throws DAOException
	{
		AutorPublicacionDAOFactory fabricate= new AutorPublicacionDAOFactory();
		AutorPublicacionDAO daote= fabricate.metodoDAO();
	 
	   AutorPublicacion per=daote.leerxidAuPuyidPu(16, 2);
	 System.out.println(" "+per.toString());
	    
	}
}

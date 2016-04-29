/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.test;

import com.repositoriounia.dao.AutorDAO;
import com.repositoriounia.dao.AutorDAOFactory;
import com.repositoriounia.dao.DAOException;
import com.repositoriounia.modelo.Autor;
import com.repositoriounia.modelo.Sexo;
import com.repositoriounia.modelo.TipoAutor;

/**
 *
 * @author Mi Laptop
 */
public class AutorTest {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws DAOException{
        // TODO code application logic here
//        crearAutor();
//        modificarrAutor();
//        eliminararautor();
//        leerautor();
//        leertodo();
//        crearAutor1();
//        crearverileer();
        leerxdni();
    }
     public static void crearAutor() throws DAOException
    {
        AutorDAOFactory fabricate= new AutorDAOFactory();
        AutorDAO daote= fabricate.metodoDAO();
          Autor objAu = new Autor();
          
           
             objAu.setNombres("edeher");
              objAu.setApellidos("ponce");
              objAu.setDni("43056714");
              objAu.setSexo(Sexo.M);
             objAu.setDireccion("aca toy");
             objAu.setTelefono("942154007");
              objAu.setCorrero("edercin@qqqqq");
              objAu.getEscuela().setIdEscuela(2);
             
              objAu.setProfesion("agroforestal");
              objAu.setEspecialidad(" fauna");
              objAu.setGrado("magister");
              
              daote.crear(objAu);
               
           
    }
     public static void crearAutor1() throws DAOException
    {
        AutorDAOFactory fabricate= new AutorDAOFactory();
        AutorDAO daote= fabricate.metodoDAO();
          Autor objAu = new Autor();
          int idPersona=1;
          
           
             
              objAu.getEscuela().setIdEscuela(1);
              
              objAu.setProfesion("agroforestal");
              objAu.setEspecialidad(" fauna");
              objAu.setGrado("magister");
              
              daote.crear(objAu,idPersona);
               
           
    }
     public static void modificarrAutor() throws DAOException
    {
        AutorDAOFactory fabricate= new AutorDAOFactory();
        AutorDAO daote= fabricate.metodoDAO();
          Autor objAu = new Autor();
         
                objAu.setIdAutor(2);
             objAu.setNombres("edeher rossetti   xxxxxx");
              objAu.setApellidos("ponce morales");
              objAu.setDni("43056714");
              objAu.setSexo(Sexo.M);
             objAu.setDireccion("aca toy");
             objAu.setTelefono("942154007");
              objAu.setCorrero("edercin@qqqqq");
              objAu.getEscuela().setIdEscuela(2);
              
              objAu.setProfesion("agroforestal acuicola xxxxxxxx");
              objAu.setEspecialidad(" fauna y flora xxxxx");
              objAu.setGrado("magister");
              
              daote.modificar(objAu);
               
           
    }
     public static void eliminararautor()throws DAOException
	{
		AutorDAOFactory fabricate= new AutorDAOFactory();
                AutorDAO daote= fabricate.metodoDAO();
	 daote.eliminar(8);
	 System.out.println("se elimino correctamente");
	 
	    
	}
      public static void leerautor()throws DAOException
	{
		AutorDAOFactory fabricate= new AutorDAOFactory();
                AutorDAO daote= fabricate.metodoDAO();
       
               
	   Autor autorr=daote.leerxid(3);
	 System.out.println(" "+autorr.toString());
        
	    
	}
       public static void leerxdni()throws DAOException
	{
		AutorDAOFactory fabricate= new AutorDAOFactory();
                AutorDAO daote= fabricate.metodoDAO();
       String dni="11111111";
               
	   Autor autorr=daote.leerxdni(dni);
	 System.out.println(" "+autorr.toString());
        
	    
	}
      public static void leertodo()throws DAOException
	{
		AutorDAOFactory fabricate= new AutorDAOFactory();
                AutorDAO daote= fabricate.metodoDAO();
       
               
                  
		
	 
	 Autor[] usuv=daote.leertodo();
	  
	  for(Autor usuv1:usuv)
	  {
	      
	      System.out.println(" "+usuv1.toString());
	  
	  }
	 
        }
        public static void crearverileer() throws DAOException
	{
		AutorDAOFactory fabricate= new AutorDAOFactory();
                AutorDAO daote= fabricate.metodoDAO();
                
		Autor objAu= new Autor();
		 objAu.setNombres("edeher");
              objAu.setApellidos("ponce");
              objAu.setDni("43056799");
              objAu.setSexo(Sexo.M);
             objAu.setDireccion("aca toy");
             objAu.setTelefono("942154007");
              objAu.setCorrero("edercin@qqqqq");
              objAu.getEscuela().setIdEscuela(2);
             
              objAu.setProfesion("agroforestal");
              objAu.setEspecialidad(" fauna");
              objAu.setGrado("magister");
                
              
                
                 Autor autorr=daote.crearverileer(objAu);
	 System.out.println(" "+autorr.toString());
		
		}
}

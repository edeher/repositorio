/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.test;

import com.repositoriounia.dao.DAOException;
import com.repositoriounia.dao.DenuncianteDAO;
import com.repositoriounia.dao.DenuncianteDAOFactory;
import com.repositoriounia.modelo.Denunciante;
import com.repositoriounia.modelo.Sexo;

/**
 *
 * @author Mi Laptop
 */
public class DenuncianteTest {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws DAOException{
        // TODO code application logic here
//        creardenunciante();
//        creardenunciante2();
//        modificardenunciante();
//        eliminardenunciante();
//        leer();
        leertodo();
       
    }
    public static void creardenunciante() throws DAOException
    {
        DenuncianteDAOFactory fabricate= new DenuncianteDAOFactory();
        DenuncianteDAO daote= fabricate.metodoDAO();
          Denunciante objDe = new Denunciante();
          
           
              objDe.setNombres("edeher denunciante");
              objDe.setApellidos("ponce");
              objDe.setDni("43056714");
              objDe.setSexo(Sexo.M);
              objDe.setDireccion("aca toy aqui");
              objDe.setTelefono("942154007");
              objDe.setCorrero("edercin@qqqqq.denunciante.com");
              
              
              daote.crear(objDe);
               
           
    }
    public static void creardenunciante2() throws DAOException
    {
          DenuncianteDAOFactory fabricate= new DenuncianteDAOFactory();
          DenuncianteDAO daote= fabricate.metodoDAO();
          
             int idPersona=17;
              
            daote.crear(idPersona);
           
    }
    public static void modificardenunciante() throws DAOException
    {
           DenuncianteDAOFactory fabricate= new DenuncianteDAOFactory();
           DenuncianteDAO daote= fabricate.metodoDAO();
           Denunciante objDe = new Denunciante();
          
              objDe.setIdDenunciante(1);
              objDe.setNombres("edeher denunciante modificado");
              objDe.setApellidos("ponce");
              objDe.setDni("43056714");
              objDe.setSexo(Sexo.M);
              objDe.setDireccion("aca toy aqui");
              objDe.setTelefono("942154007");
              objDe.setCorrero("edercin@qqqqq.denunciante.com.modifi");
              
              daote.modificar(objDe);
               
           
    }
    public static void eliminardenunciante() throws DAOException
    {
            DenuncianteDAOFactory fabricate= new DenuncianteDAOFactory();
            DenuncianteDAO daote= fabricate.metodoDAO();
          
          
            int idDenunciante=6;
              
              daote.eliminar(idDenunciante);
               
           
    }
    public static void leer()throws DAOException
	{
		DenuncianteDAOFactory fabricate= new DenuncianteDAOFactory();
                DenuncianteDAO daote= fabricate.metodoDAO();
       
               
	   Denunciante objDe=daote.leerxid(3);
	 System.out.println(" "+objDe.toString());
        
	    
	}
     public static void leertodo()throws DAOException
	{
		 DenuncianteDAOFactory fabricate= new DenuncianteDAOFactory();
                 DenuncianteDAO daote= fabricate.metodoDAO();
	Denunciante[] usuv=daote.leertodo();
	  
	  for(Denunciante usuv1:usuv)
	  {
	      
	      System.out.println(" "+usuv1.toString());
	  
	  }
	 
        } 
}

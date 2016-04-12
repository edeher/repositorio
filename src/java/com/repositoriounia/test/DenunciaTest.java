/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.test;

import com.repositoriounia.dao.DAOException;
import com.repositoriounia.dao.DenunciaDAO;
import com.repositoriounia.dao.DenunciaDAOFactory;
import com.repositoriounia.modelo.Denuncia;
import com.repositoriounia.modelo.Denunciante;
import com.repositoriounia.modelo.Sexo;

/**
 *
 * @author Mi Laptop
 */
public class DenunciaTest {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws DAOException{
        // TODO code application logic here
        
//        creardenuncia();
        creardenuncia2();
//        modificardenuncia();
//        eliminardenuncia();
//        leer();
//        leertodo();
    }
     public static void creardenuncia() throws DAOException
    {
        DenunciaDAOFactory fabricate= new DenunciaDAOFactory();
        DenunciaDAO daote= fabricate.metodoDAO();
          Denuncia objDe = new Denuncia();
         
             objDe.getDenunciante().setNombres("edeher 333");
              objDe.getDenunciante().setApellidos("ponce");
              objDe.getDenunciante().setDni("43056714");
              objDe.getDenunciante().setSexo(Sexo.M);
             objDe.getDenunciante().setDireccion("aca toy");
             objDe.getDenunciante().setTelefono("942154007");
              objDe.getDenunciante().setCorrero("edercin@qqqqq prueba");
              
             objDe.getArchivoPublicacion().setIdArchivoPublicacion(1);
              objDe.setDescripcion("es copia de prueba33333");
              
              
              daote.crear(objDe);
               
           
    }
      public static void creardenuncia2() throws DAOException
    {
        DenunciaDAOFactory fabricate= new DenunciaDAOFactory();
        DenunciaDAO daote= fabricate.metodoDAO();
          Denuncia objDe = new Denuncia();
          
          
          int idDenunciante=5;
           
             
              objDe.getArchivoPublicacion().setIdArchivoPublicacion(1);
              objDe.setDescripcion("es copia de el");
              
              daote.crear(objDe,idDenunciante);
               
           
    }
       public static void modificardenuncia() throws DAOException
    {
        DenunciaDAOFactory fabricate= new DenunciaDAOFactory();
        DenunciaDAO daote= fabricate.metodoDAO();
          Denuncia objDe = new Denuncia();
          
              objDe.setIdDenuncia(2);
              objDe.setDescripcion("es copia de el creoxxxx");
              
              daote.modificar(objDe);
               
           
    }
       public static void eliminardenuncia() throws DAOException
    {
        DenunciaDAOFactory fabricate= new DenunciaDAOFactory();
        DenunciaDAO daote= fabricate.metodoDAO();
          Denuncia objDe = new Denuncia();
          
              objDe.setIdDenuncia(4);
              
              
              daote.eliminar(objDe);
               
           
    }
        public static void leer()throws DAOException
	{
		 DenunciaDAOFactory fabricate= new DenunciaDAOFactory();
        DenunciaDAO daote= fabricate.metodoDAO();
       
               
	   Denuncia objDe=daote.leerxid(3);
	 System.out.println(" "+objDe.toString());
        
	    
	}
        public static void leertodo()throws DAOException
	{
		 DenunciaDAOFactory fabricate= new DenunciaDAOFactory();
                DenunciaDAO daote= fabricate.metodoDAO();
	 Denuncia[] usuv=daote.leertodo();
	  
	  for(Denuncia usuv1:usuv)
	  {
	      
	      System.out.println(" "+usuv1.toString());
	  
	  }
	 
        } 
}

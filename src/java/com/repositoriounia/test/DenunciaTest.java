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
//        creardenuncia2();
//        modificardenuncia();
//        eliminardenuncia();
//        leer();
        leertodo();
    }
     public static void creardenuncia() throws DAOException
    {
        DenunciaDAOFactory fabricate= new DenunciaDAOFactory();
        DenunciaDAO daote= fabricate.metodoDAO();
          Denuncia objDe = new Denuncia();
          Denunciante objDenun=new Denunciante();
          int idArchivoPublicacion=1;
           
             objDenun.setNombres("edeher");
              objDenun.setApellidos("ponce");
              objDenun.setDni("43056714");
              objDenun.setSexo(Sexo.M);
             objDenun.setDireccion("aca toy");
             objDenun.setTelefono("942154007");
              objDenun.setCorrero("edercin@qqqqq");
              
              objDe.setDescripcion("es copia");
              
              daote.crear(objDe,objDenun,idArchivoPublicacion);
               
           
    }
      public static void creardenuncia2() throws DAOException
    {
        DenunciaDAOFactory fabricate= new DenunciaDAOFactory();
        DenunciaDAO daote= fabricate.metodoDAO();
          Denuncia objDe = new Denuncia();
          
          int idArchivoPublicacion=1;
          int idDenunciante=5;
           
             
              
              objDe.setDescripcion("es copia de el");
              
              daote.crear(objDe,idDenunciante,idArchivoPublicacion);
               
           
    }
       public static void modificardenuncia() throws DAOException
    {
        DenunciaDAOFactory fabricate= new DenunciaDAOFactory();
        DenunciaDAO daote= fabricate.metodoDAO();
          Denuncia objDe = new Denuncia();
          
              objDe.setIdDenuncia(2);
              objDe.setDescripcion("es copia de el creo");
              
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

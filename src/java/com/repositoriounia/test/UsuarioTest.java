/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.test;

import com.repositoriounia.dao.DAOException;
import com.repositoriounia.dao.UsuarioDAO;
import com.repositoriounia.dao.UsuarioDAOFactory;
import com.repositoriounia.modelo.Sexo;
import com.repositoriounia.modelo.TipoUsuario;
import com.repositoriounia.modelo.Usuario;

/**
 *
 * @author Mi Laptop
 */
public class UsuarioTest {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws DAOException{
        // TODO code application logic here
        crearUsuario();
//        crearUsuario1();
//        modificarUsuario();
//        modificarUsuario1();
//        eliminarusuario();
//        leerusuario();
//        leertodo();
//        validar();
    }
     public static void crearUsuario() throws DAOException
    {
        UsuarioDAOFactory fabricate= new UsuarioDAOFactory();
        UsuarioDAO daote= fabricate.metodoDAO();
          Usuario objAu = new Usuario();
          
           
             objAu.getPersona().setNombres("edeher r.");
               objAu.getPersona().setApellidos("ponce");
               objAu.getPersona().setDni("43056714");
               objAu.getPersona().setSexo(Sexo.M);
              objAu.getPersona().setDireccion("aca toy");
              objAu.getPersona().setTelefono("942154007");
               objAu.getPersona().setCorrero("edercin@qqqqq");
               
               objAu.setUsuario("edercin");
               objAu.setPassword("poderoso12");
               objAu.setTipo(TipoUsuario.I);
              System.out.println(" "+objAu.toString());
              
              daote.crear(objAu);
               
           
    }
     public static void crearUsuario1() throws DAOException
    {
        UsuarioDAOFactory fabricate= new UsuarioDAOFactory();
        UsuarioDAO daote= fabricate.metodoDAO();
          Usuario objAu = new Usuario();
          int idPersona=1;
               
               objAu.setUsuario("edercin");
               objAu.setPassword("poderoso12");
               objAu.setTipo(TipoUsuario.I);
              
              
              daote.crear(objAu,idPersona);
               
           
    }
      public static void modificarUsuario() throws DAOException
    {
        UsuarioDAOFactory fabricate= new UsuarioDAOFactory();
        UsuarioDAO daote= fabricate.metodoDAO();
          Usuario objAu = new Usuario();
          
            objAu.setIdUsuario(2);
             objAu.getPersona().setNombres("edeher Rossetti");
               objAu.getPersona().setApellidos("ponce");
               objAu.getPersona().setDni("43056714");
               objAu.getPersona().setSexo(Sexo.M);
              objAu.getPersona().setDireccion("aca toy");
              objAu.getPersona().setTelefono("942154007");
               objAu.getPersona().setCorrero("edercin@qqqqq");
               
               objAu.setUsuario("edercininin");
               objAu.setPassword("poderoso1212");
               objAu.setTipo(TipoUsuario.I);
              
              
              daote.modificar(objAu);
               
           
    }
       public static void modificarUsuario1() throws DAOException
    {
        UsuarioDAOFactory fabricate= new UsuarioDAOFactory();
        UsuarioDAO daote= fabricate.metodoDAO();
          Usuario objAu = new Usuario();
          
              int idUsuario=1;
             
               objAu.setTipo(TipoUsuario.A);
              
              
              daote.modificar(objAu,idUsuario);
               
           
    }
        public static void eliminarusuario()throws DAOException
	{
		UsuarioDAOFactory fabricate= new UsuarioDAOFactory();
                 UsuarioDAO daote= fabricate.metodoDAO();
                    daote.eliminar(6);
	 System.out.println("se elimino correctamente");
	 
	    
	}
        public static void leerusuario()throws DAOException
	{
		UsuarioDAOFactory fabricate= new UsuarioDAOFactory();
                 UsuarioDAO daote= fabricate.metodoDAO();
	   Usuario autorr=daote.leerxid(3);
	 System.out.println(" "+autorr.toString());
        
	    
	}
        public static void leertodo()throws DAOException
	{
		UsuarioDAOFactory fabricate= new UsuarioDAOFactory();
                 UsuarioDAO daote= fabricate.metodoDAO();
	   Usuario[] usuv=daote.leertodo();
	  
	  for(Usuario usuv1:usuv)
	  {
	      
	      System.out.println(" "+usuv1.toString());
	  
	  }
	}
         public static void validar()throws DAOException
	{
		UsuarioDAOFactory fabricate= new UsuarioDAOFactory();
                 UsuarioDAO daote= fabricate.metodoDAO();
                 
                  Usuario objAu = new Usuario();
          
            objAu.setUsuario("edeher");
             objAu.setPassword("poderoso12(12)");
                 
                 
	   Usuario autorr=daote.validar(objAu);
	 System.out.println(" "+autorr.toString());
        
	    
	}
}

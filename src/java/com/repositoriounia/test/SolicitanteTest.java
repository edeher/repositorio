/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.test;

import com.repositoriounia.dao.DAOException;
import com.repositoriounia.dao.SolicitanteDAO;
import com.repositoriounia.dao.SolicitanteDAOFactory;
import com.repositoriounia.modelo.Sexo;
import com.repositoriounia.modelo.Solicitante;
import com.repositoriounia.modelo.TipoEntidad;

/**
 *
 * @author Mi Laptop
 */
public class SolicitanteTest {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args)throws DAOException{
        // TODO code application logic here
//      crearsolicitante();
//      crearsolicitante1();
//      modificarsolicitante();
//      eliminarsolicitante();
//      leer();
      leertodo();
    }
    public static void crearsolicitante() throws DAOException
    {
        SolicitanteDAOFactory fabricate= new SolicitanteDAOFactory();
        SolicitanteDAO daote= fabricate.metodoDAO();
          Solicitante objSo = new Solicitante();
          
           
              objSo.setNombres("edeher");
              objSo.setApellidos("ponce");
              objSo.setDni("43056714");
              objSo.setSexo(Sexo.M);
              objSo.setDireccion("aca toy aqui");
              objSo.setTelefono("942154007");
              objSo.setCorrero("edercin@qqqqq");
              
              objSo.setTipoEntidad(TipoEntidad.SERVICIOS);
              objSo.setEntidad("uni");
              objSo.setAreaTrabajo("investigacion");
              
              daote.crear(objSo);
               
           
    }
     public static void crearsolicitante1() throws DAOException
    {
        SolicitanteDAOFactory fabricate= new SolicitanteDAOFactory();
        SolicitanteDAO daote= fabricate.metodoDAO();
          Solicitante objSo = new Solicitante();
          
           
             int idPersona=17;
              
              objSo.setTipoEntidad(TipoEntidad.SERVICIOS);
              objSo.setEntidad("uni");
              objSo.setAreaTrabajo("investigacion");
              
              daote.crear(objSo,idPersona);
               
           
    }
     public static void modificarsolicitante() throws DAOException
    {
        SolicitanteDAOFactory fabricate= new SolicitanteDAOFactory();
        SolicitanteDAO daote= fabricate.metodoDAO();
          Solicitante objSo = new Solicitante();
          
              objSo.setIdSolicitante(1);
              objSo.setNombres("edeher");
              objSo.setApellidos("ponce");
              objSo.setDni("43056714");
              objSo.setSexo(Sexo.M);
              objSo.setDireccion("aca toy aqui, jeje");
              objSo.setTelefono("942154007");
              objSo.setCorrero("edercin@qqqqq.unia.pe");
              
              objSo.setTipoEntidad(TipoEntidad.SERVICIOS);
              objSo.setEntidad("uni");
              objSo.setAreaTrabajo("investigacion vicepresidencia");
              
              daote.modificar(objSo);
               
           
    }
     public static void eliminarsolicitante() throws DAOException
    {
        SolicitanteDAOFactory fabricate= new SolicitanteDAOFactory();
        SolicitanteDAO daote= fabricate.metodoDAO();
          
          
            int idsolicitante=6;
              
              daote.eliminar(idsolicitante);
               
           
    }
      public static void leer()throws DAOException
	{
		SolicitanteDAOFactory fabricate= new SolicitanteDAOFactory();
                SolicitanteDAO daote= fabricate.metodoDAO();
       
               
	   Solicitante objDe=daote.leerxid(3);
	 System.out.println(" "+objDe.toString());
        
	    
	}
      public static void leertodo()throws DAOException
	{
		 SolicitanteDAOFactory fabricate= new SolicitanteDAOFactory();
                SolicitanteDAO daote= fabricate.metodoDAO();
	 Solicitante[] usuv=daote.leertodo();
	  
	  for(Solicitante usuv1:usuv)
	  {
	      
	      System.out.println(" "+usuv1.toString());
	  
	  }
	 
        } 
}

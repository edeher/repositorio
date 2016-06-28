/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.test;

import com.repositoriounia.dao.DAOException;
import com.repositoriounia.dao.TemasSugeridosDAO;
import com.repositoriounia.dao.TemasSugeridosDAOFactory;
import com.repositoriounia.modelo.Sexo;
import com.repositoriounia.modelo.Solicitante;
import com.repositoriounia.modelo.TemasSugeridos;
import com.repositoriounia.modelo.TipoEntidad;

/**
 *
 * @author Mi Laptop
 */
public class TemasSugeridosTest {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws DAOException{
        // TODO code application logic here
//        crearartemas();
//        crearartemas2();
//        modificartema();
//        eliminartemas();
//        leer();
        crearleer();
//        leertodo();
//        leertodo2();
      
    }
     public static void crearartemas() throws DAOException
    {
        TemasSugeridosDAOFactory fabricate= new TemasSugeridosDAOFactory();
        TemasSugeridosDAO daote= fabricate.metodoDAO();
          
           TemasSugeridos objTe=new TemasSugeridos();
           
                int codigo=1;
               
              objTe.getSolicitante().setNombres("edeher tema ");
             objTe.getSolicitante().setApellidos("ponce tema");
             objTe.getSolicitante().setDni("43056714");
              objTe.getSolicitante().setSexo(Sexo.M);
              objTe.getSolicitante().setDireccion("aca toy");
              objTe.getSolicitante().setTelefono("942154007");
              objTe.getSolicitante().setCorrero("edercin@qqqqq");
              objTe.getSolicitante().setTipoEntidad(TipoEntidad.SERVICIOS);
              objTe.getSolicitante().setEntidad("mci");
              objTe.getSolicitante().setAreaTrabajo("informatica");
              
              objTe.setTema("buscando a forest");
              objTe.setAreaTematica("pelicula");
              
              
        daote.crear(objTe);
        
    }
      public static void crearartemas2() throws DAOException
    {
        TemasSugeridosDAOFactory fabricate= new TemasSugeridosDAOFactory();
        TemasSugeridosDAO daote= fabricate.metodoDAO();
          
           TemasSugeridos objTe=new TemasSugeridos();
           
                int idSolicitante=1;
               
              
              
              objTe.setTema("buscando a forest");
              objTe.setAreaTematica("pelicula");
              
              
        daote.crear(objTe,idSolicitante);
        
    }
    public static void modificartema() throws DAOException
    {
         TemasSugeridosDAOFactory fabricate= new TemasSugeridosDAOFactory();
         TemasSugeridosDAO daote= fabricate.metodoDAO();
        
       TemasSugeridos objTe= new TemasSugeridos();
        
              objTe.setIdTemaSugerido(2);
              objTe.setTema("ya se cambio");
              objTe.setAreaTematica("cambiazo");
	      
                  daote.modificar(objTe);
    }  
     public static void eliminartemas()throws DAOException
	{
		TemasSugeridosDAOFactory fabricate= new TemasSugeridosDAOFactory();
               TemasSugeridosDAO daote= fabricate.metodoDAO();
       
              
	 daote.eliminar(10);
	 System.out.println("se elimino correctamente");
	 
	    
	}
      public static void leer()throws DAOException
	{
		 TemasSugeridosDAOFactory fabricate= new TemasSugeridosDAOFactory();
                TemasSugeridosDAO daote= fabricate.metodoDAO();
       
               
	   TemasSugeridos archiso=daote.leerxid(3);
	 System.out.println(" "+archiso.toString());
        
	    
	}
       public static void leertodo()throws DAOException
	{
		TemasSugeridosDAOFactory fabricate= new TemasSugeridosDAOFactory();
                TemasSugeridosDAO daote= fabricate.metodoDAO();
	 TemasSugeridos[] usuv=daote.leertodo();
	  
	  for(TemasSugeridos usuv1:usuv)
	  {
	      
	      System.out.println(" "+usuv1.toString());
	  
	  }
	 
        } 
       public static void leertodo2()throws DAOException
	{
		TemasSugeridosDAOFactory fabricate= new TemasSugeridosDAOFactory();
                TemasSugeridosDAO daote= fabricate.metodoDAO();
	 TemasSugeridos[] usuv=daote.leertodo(1);
	  
	  for(TemasSugeridos usuv1:usuv)
	  {
	      
	      System.out.println(" "+usuv1.toString());
	  
	  }
	 
        } 
        public static void crearleer()throws DAOException
	{
		 TemasSugeridosDAOFactory fabricate= new TemasSugeridosDAOFactory();
                TemasSugeridosDAO daote= fabricate.metodoDAO();
                TemasSugeridos objTe=new TemasSugeridos();
           
                             
              objTe.getSolicitante().setNombres("edeher tema ");
             objTe.getSolicitante().setApellidos("ponce tema");
             objTe.getSolicitante().setDni("43056714");
              objTe.getSolicitante().setSexo(Sexo.M);
              objTe.getSolicitante().setDireccion("aca toy");
              objTe.getSolicitante().setTelefono("942154007");
              objTe.getSolicitante().setCorrero("edercin@qqqqq");
              objTe.getSolicitante().setTipoEntidad(TipoEntidad.SERVICIOS);
              objTe.getSolicitante().setEntidad("mci");
              objTe.getSolicitante().setAreaTrabajo("informatica");
              
              objTe.setTema("buscando a forest");
              objTe.setAreaTematica("pelicula");
               
	   TemasSugeridos archiso=daote.crearleer(objTe);
	 System.out.println(" "+archiso.toString());
        
	    
	}
}

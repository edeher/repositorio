/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.test;

import com.repositoriounia.dao.ArchivosSolicitadosDAO;
import com.repositoriounia.dao.ArchivosSolicitadosDAOFactory;
import com.repositoriounia.dao.DAOException;
import com.repositoriounia.modelo.ArchivoPublicacion;
import com.repositoriounia.modelo.ArchivosSolicitados;
import com.repositoriounia.modelo.Respuesta;
import com.repositoriounia.modelo.Sexo;
import com.repositoriounia.modelo.Solicitante;
import com.repositoriounia.modelo.TipoEntidad;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author Mi Laptop
 */
public class ArchivosSolicitadosTest {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args)throws DAOException{
        // TODO code application logic here
        creararchivossolicitados();
//        creararchivossolicitados2();
//        modificararchivosolicitados();
//        eliminararchivosolicitados();
//        leerarchivosolicitado();
//        leertodo1();
//        leertodo2();
//        leertodo3();
       
    }
    public static void creararchivossolicitados() throws DAOException
    {
        ArchivosSolicitadosDAOFactory fabricate= new ArchivosSolicitadosDAOFactory();
        ArchivosSolicitadosDAO daote= fabricate.metodoDAO();
           Solicitante objsoli=new Solicitante();
           
                int codigo=1;
               
              objsoli.setNombres("edeher");
              objsoli.setApellidos("ponce");
              objsoli.setDni("43056714");
              objsoli.setSexo(Sexo.M);
              objsoli.setDireccion("aca toy");
              objsoli.setTelefono("942154007");
              objsoli.setCorrero("edercin@qqqqq");
              objsoli.setTipoEntidad(TipoEntidad.SERVICIOS);
              objsoli.setEntidad("mci");
              objsoli.setAreaTrabajo("informatica");
              
        daote.crear(objsoli,codigo);
        
    }
    public static void creararchivossolicitados2() throws DAOException
    {
        ArchivosSolicitadosDAOFactory fabricate= new ArchivosSolicitadosDAOFactory();
        ArchivosSolicitadosDAO daote= fabricate.metodoDAO();
             
                int codigo1=1;
                int codigo2=2;
		 
		
        daote.crear(codigo1,codigo2);
        
    }
    public static void modificararchivosolicitados() throws DAOException
    {
         ArchivosSolicitadosDAOFactory fabricate= new ArchivosSolicitadosDAOFactory();
        ArchivosSolicitadosDAO daote= fabricate.metodoDAO();
        
        ArchivosSolicitados archiso= new ArchivosSolicitados();
        
        
         try {
		          SimpleDateFormat fe=new SimpleDateFormat("yyyy-MM-dd");
                  
                                Date fec = new Date(fe.parse("2016-02-20").getTime());
                                

                          
        
                int codigo=2;
                int codigo2=3;
                archiso.setIdArchivoSolicitado(10);
              archiso.setRespuesta(Respuesta.ATENDIDOWEB);
              archiso.setFechaRespuesta(fec);
	      
      
        daote.modificar(archiso,codigo,codigo2);
         } 
                          catch (ParseException e) {
			System.out.println("Fecha invalida: " + e.getMessage());
                        }
    }
     public static void eliminararchivosolicitados()throws DAOException
	{
		 ArchivosSolicitadosDAOFactory fabricate= new ArchivosSolicitadosDAOFactory();
                ArchivosSolicitadosDAO daote= fabricate.metodoDAO();
       
              
	 daote.eliminar(11);
	 System.out.println("se elimino correctamente");
	 
	    
	}
     public static void leerarchivosolicitado()throws DAOException
	{
		 ArchivosSolicitadosDAOFactory fabricate= new ArchivosSolicitadosDAOFactory();
                   ArchivosSolicitadosDAO daote= fabricate.metodoDAO();
       
               
	   ArchivosSolicitados archiso=daote.leerxid(3);
	 System.out.println(" "+archiso.toString());
        
	    
	}
       public static void leertodo1()throws DAOException
	{
		ArchivosSolicitadosDAOFactory fabricate= new ArchivosSolicitadosDAOFactory();
                ArchivosSolicitadosDAO daote= fabricate.metodoDAO();
       
               
                  
		
	 
	 ArchivosSolicitados[] usuv=daote.leertodo(2);
	  
	  for(ArchivosSolicitados usuv1:usuv)
	  {
	      
	      System.out.println(" "+usuv1.toString());
	  
	  }
	 
        } 
       public static void leertodo2()throws DAOException
	{
		ArchivosSolicitadosDAOFactory fabricate= new ArchivosSolicitadosDAOFactory();
                ArchivosSolicitadosDAO daote= fabricate.metodoDAO();
       
               
                  
		
	 
	 ArchivosSolicitados[] usuv=daote.leertodo2(3);
	  
	  for(ArchivosSolicitados usuv1:usuv)
	  {
	      
	      System.out.println(" "+usuv1.toString());
	  
	  }
	 
        } 
       public static void leertodo3()throws DAOException
	{
		ArchivosSolicitadosDAOFactory fabricate= new ArchivosSolicitadosDAOFactory();
                ArchivosSolicitadosDAO daote= fabricate.metodoDAO();
       
               
                  
		
	 
	 ArchivosSolicitados[] usuv=daote.leertodo();
	  
	  for(ArchivosSolicitados usuv1:usuv)
	  {
	      
	      System.out.println(" "+usuv1.toString());
	  
	  }
	 
        } 
}

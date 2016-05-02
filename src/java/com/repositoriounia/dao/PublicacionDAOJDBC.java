/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;

import com.repositoriounia.modelo.AreaInvestigacion;
import com.repositoriounia.modelo.LineaInvestigacion;
import com.repositoriounia.modelo.Publicacion;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Mi Laptop
 */
public class PublicacionDAOJDBC implements PublicacionDAO{
    
    private final Connection con;

    public PublicacionDAOJDBC() {
        this.con = DBManager.getConnection();
    }
            

    @Override
    public boolean crear(Publicacion objPu) throws DAOException {
         try 
	        {
	           CallableStatement st=con.prepareCall("{call sp_publicacion_n(?,?,?)}");
	                   
	                  st.setInt(1, objPu.getLineaInvestigacion().getIdLineaInvestigacion());
                          st.setString(2, objPu.getTitulo());
                          st.setDate(3,new java.sql.Date(objPu.getFechaPublicacion().getTime()));
                            
	                   
	           if (st.execute()) //devuelve verdadero si fallo
            {
               throw new DAOException("Error creando publicacion ");
            }
            st.close();
            
            
        } catch (SQLException se) {
            throw new DAOException("Error añadiendo publicacion  en DAO", se);
        }
        return true;
    }

    @Override
    public boolean modificar(Publicacion objPu) throws DAOException {
        try 
	        {
	           CallableStatement st=con.prepareCall("{call sp_publicacion_m(?,?,?,?,?)}");
                   
	                  st.setInt(1, objPu.getIdPublicacion());
	                  st.setInt(2, objPu.getLineaInvestigacion().getIdLineaInvestigacion());
                          st.setString(3, objPu.getTitulo());
                           st.setDate(4,new java.sql.Date(objPu.getFechaCarga().getTime()));
                          st.setDate(5,new java.sql.Date(objPu.getFechaPublicacion().getTime()));
                            
	                   
	           if (st.execute()) //devuelve verdadero si fallo
            {
               throw new DAOException("Error modificando publicacion ");
            }
            st.close();
            
            
        } catch (SQLException se) {
            throw new DAOException("Error modificando publicacion  en DAO", se);
        }
        return true;
    }

    @Override
    public boolean eliminar(int idPublicacion) throws DAOException {
     try  {
	           CallableStatement st=con.prepareCall("{call sp_publicacion_e(?) }");
            
            st.setInt(1,idPublicacion);


            if (st.execute()) //devuelve verdadero si fallo
            {
                throw new DAOException("Error eliminado publicacion");
            }
            st.close();
            
        } catch (SQLException se) {
            throw new DAOException("Error eliminando publicacion en DAO", se);
        }
        return true;     
    }

    @Override
    public Publicacion leerxid(int idPublicacion) throws DAOException {
      try{
        CallableStatement st=con.prepareCall("{call sp_publicacion_bco(?)}");
            st.setInt(1,idPublicacion);
              ResultSet rs = st.executeQuery();
            if (!rs.next()) {
                return null;
            }
           
            return (
                    new Publicacion(
                            
                            rs.getInt("idPublicacion"),
                            new LineaInvestigacion(
                                    rs.getInt("idLineaInvestigacion"),
                                    new AreaInvestigacion(
                                    rs.getInt("idAreaInvestigacion"),
                                            rs.getString("area")
                                    ),
                                    rs.getString("linea")),
                            rs.getString("titulo"),
                            rs.getDate("fechaCarga"),
                            rs.getDate("fechaPublicacion"))
                   );
            
        } catch (SQLException se) {
            
            throw new DAOException("Error buscando publicacion en DAO", se);
        }
         
	   
    
    }

    @Override
    public Publicacion[] leertodo() throws DAOException {
       
      try  {
             CallableStatement stm=con.prepareCall("{call sp_publicacion_all()}");
            ResultSet rs=stm.executeQuery();
                      
            ArrayList<Publicacion> tribs = new ArrayList<>(); 
            
            while (rs.next()) {
                tribs.add(
                        
                  new Publicacion(
                            
                            rs.getInt("idPublicacion"),
                            new LineaInvestigacion(
                                    rs.getInt("idLineaInvestigacion"),
                                    new AreaInvestigacion(
                                    rs.getInt("idAreaInvestigacion"),
                                            rs.getString("area")
                                    ),
                                    rs.getString("linea")),
                            rs.getString("titulo"),
                            rs.getDate("fechaCarga"),
                            rs.getDate("fechaPublicacion"))
                   );
            }
            return tribs.toArray(new Publicacion[0]);
        } catch (SQLException se) {
            
            throw new DAOException("Error obteniedo todos las publicaciones en DAO: " 
                    + se.getMessage(), se);
        }   
    
    }

    @Override
    public Publicacion crearleer(Publicacion objPu) throws DAOException {
        try{
        CallableStatement st=con.prepareCall("{call sp_publicacion_n2(?,?,?)}");
        
                          st.setInt(1, objPu.getLineaInvestigacion().getIdLineaInvestigacion());
                          st.setString(2, objPu.getTitulo());
                          st.setDate(3,new java.sql.Date(objPu.getFechaPublicacion().getTime()));
                          
              ResultSet rs = st.executeQuery();
            if (!rs.next()) {
                return null;
            }
           
            return (
                   new Publicacion(
                            
                            rs.getInt("idPublicacion"),
                            new LineaInvestigacion(
                                    rs.getInt("idLineaInvestigacion"),
                                    new AreaInvestigacion(
                                    rs.getInt("idAreaInvestigacion"),
                                            rs.getString("area")
                                    ),
                                    rs.getString("linea")),
                            rs.getString("titulo"),
                            rs.getDate("fechaCarga"),
                            rs.getDate("fechaPublicacion"))
                   );
            
        } catch (SQLException se) {
            
            throw new DAOException("Error buscando publicacion en DAO", se);
        }
         
	   
    
    }

    @Override
    public Publicacion modificarleer(Publicacion objPu) throws DAOException {
        try{
        CallableStatement st=con.prepareCall("{call sp_publicacion_m2(?,?,?,?,?)}");
        
                          st.setInt(1, objPu.getIdPublicacion());
                          st.setInt(2, objPu.getLineaInvestigacion().getIdLineaInvestigacion());
                          st.setString(3, objPu.getTitulo());
                           st.setDate(4,new java.sql.Date(objPu.getFechaCarga().getTime()));
                          st.setDate(5,new java.sql.Date(objPu.getFechaPublicacion().getTime()));
                          
              ResultSet rs = st.executeQuery();
            if (!rs.next()) {
                return null;
            }
           
            return (
                   new Publicacion(
                            
                            rs.getInt("idPublicacion"),
                            new LineaInvestigacion(
                                    rs.getInt("idLineaInvestigacion"),
                                    new AreaInvestigacion(
                                    rs.getInt("idAreaInvestigacion"),
                                            rs.getString("area")
                                    ),
                                    rs.getString("linea")),
                            rs.getString("titulo"),
                            rs.getDate("fechaCarga"),
                            rs.getDate("fechaPublicacion"))
                   );
            
        } catch (SQLException se) {
            
            throw new DAOException("Error buscando publicacion en DAO", se);
        }
         
	   
    }

   
    
}

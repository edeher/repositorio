/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;
import com.repositoriounia.modelo.ArchivoPublicacion;
import com.repositoriounia.modelo.DescripcionArchivo;
import com.repositoriounia.modelo.Publicacion;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import org.omg.PortableInterceptor.SYSTEM_EXCEPTION;
/**
 *
 * @author Mi Laptop
 */
public class ArchivoPublicacionDAOJDBC implements ArchivoPublicacionDAO{
 private final Connection con;
 public ArchivoPublicacionDAOJDBC() 
 {
	        this.con = DBManager.getConnection();
 }
    @Override
    public boolean crear(ArchivoPublicacion objarchP, int idPublicacion) throws DAOException {
    
         try 
	        {
	           CallableStatement st=con.prepareCall("{call sp_archivopublicacion_n(?,?,?,?)}");
	                   
	                    st.setInt(1,idPublicacion);
                            st.setString(2,objarchP.getDescripcion().name() );
	                    st.setString(3,objarchP.getUrlLocal());
	                    st.setString(4,objarchP.getUrlWeb());
                            
	                   
	           if (st.execute()) //devuelve verdadero si fallo
            {
               throw new DAOException("Error creando archivopublicacion ");
            }
            st.close();
            
            
        } catch (SQLException se) {
            throw new DAOException("Error añadiendo archivo archivopublicacion en DAO", se);
        }
        return true;
    
    
    }

    @Override
    public boolean modificar(ArchivoPublicacion objarchP, int idPublicacion) throws DAOException {
        try 
	        {
	           CallableStatement st=con.prepareCall("{call sp_archivopublicacion_m(?,?,?,?,?)}");
	                   st.setInt(1,objarchP.getIdArchivoPublicacion());
                            st.setInt(2,idPublicacion);
                            st.setString(3,objarchP.getDescripcion().name() );
	                    st.setString(4,objarchP.getUrlLocal());
	                    st.setString(5,objarchP.getUrlWeb());
                            
	                   
	           if (st.execute()) //devuelve verdadero si fallo
            {
               throw new DAOException("Error creando archivopublicacion denuncia");
            }
            st.close();
            
            
        } catch (SQLException se) {
            throw new DAOException("Error añadiendo archivo archivopublicacion en DAO", se);
        }
        return true;
    
    }

    @Override
    public boolean eliminar(int idArchivoPublicacion) throws DAOException {
        try  {
	           CallableStatement st=con.prepareCall("{call sp_archivopublicacion_e(?) }");
            
            st.setInt(1,idArchivoPublicacion);


            if (st.execute()) //devuelve verdadero si fallo
            {
                throw new DAOException("Error modificando archivopublicacion denuncia");
            }
            st.close();
            
        } catch (SQLException se) {
            throw new DAOException("Error añadiendo archivo archivopublicacion en DAO", se);
        }
        return true; 
    
    }

    @Override
    public ArchivoPublicacion leerxid(int idArchivoPublicacion) throws DAOException {
       try{
        CallableStatement st=con.prepareCall("{call sp_archivopublicacion_bco(?)}");
            st.setInt(1,idArchivoPublicacion);
              ResultSet rs = st.executeQuery();
            if (!rs.next()) {
                return null;
            }
           
            return (
                    new ArchivoPublicacion(
                            rs.getInt("idArchivoPublicacion"),
                           
                           new Publicacion(
                                   rs.getInt("idPublicacion")                         
                           ),
                             DescripcionArchivo.valueOf(rs.getString("descripcion")),
                            rs.getString("urlLocal"),
                            rs.getString("urlWeb"))
                   );
            
        } catch (SQLException se) {
            
            throw new DAOException("Error buscando archivopublicacion en DAO", se);
        }
         
	 
    
    }

    @Override
    public ArchivoPublicacion[] leertodo(int idPublicacion) throws DAOException {
       try  {
             CallableStatement st=con.prepareCall("{call sp_archivopublicacion_bco1(?)}");
            st.setInt(1,idPublicacion);
              ResultSet rs = st.executeQuery();
                      
            ArrayList<ArchivoPublicacion> tribs = new ArrayList<>(); 
            
            while (rs.next()) {
                tribs.add(
                        
                     new ArchivoPublicacion(
                            rs.getInt("idArchivoPublicacion"),
                           
                           new Publicacion(
                                   rs.getInt("idPublicacion")                         
                           ),
                             DescripcionArchivo.valueOf(rs.getString("descripcion")),
                            rs.getString("urlLocal"),
                            rs.getString("urlWeb"))
                
                  );
            }
            return tribs.toArray(new ArchivoPublicacion[0]);
        } catch (SQLException se) {
            
            throw new DAOException("Error obteniedo todos los archivopublicacion en DAO: " 
                    + se.getMessage(), se);
        }   
    
    
    
    
    
    }

    @Override
    public ArchivoPublicacion[] leertodo() throws DAOException {
      
     try  {
             CallableStatement stm=con.prepareCall("{call sp_archivopublicacion_all}");
            ResultSet rs=stm.executeQuery();
                      
            ArrayList<ArchivoPublicacion> tribs = new ArrayList<>(); 
            
            while (rs.next()) {
                tribs.add(
                        
                    new ArchivoPublicacion(
                            rs.getInt("idArchivoPublicacion"),
                           
                           new Publicacion(
                                   rs.getInt("idPublicacion")                         
                           ),
                             DescripcionArchivo.valueOf(rs.getString("descripcion")),
                            rs.getString("urlLocal"),
                            rs.getString("urlWeb"))
                
                  );
            }
            return tribs.toArray(new ArchivoPublicacion[0]);
        } catch (SQLException se) {
            
            throw new DAOException("Error obteniedo todos los archivopublicaciona en DAO: " 
                    + se.getMessage(), se);
        }   
    }

    
    
}

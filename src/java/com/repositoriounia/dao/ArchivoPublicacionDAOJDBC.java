/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;
import com.repositoriounia.modelo.ArchivoPublicacion;
import com.repositoriounia.modelo.AreaInvestigacion;
import com.repositoriounia.modelo.DescripcionArchivo;
import com.repositoriounia.modelo.LineaInvestigacion;
import com.repositoriounia.modelo.Publicacion;
import java.io.InputStream;
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
    public boolean crear(ArchivoPublicacion objarchP) throws DAOException {
    
         try 
	        {
	           CallableStatement st=con.prepareCall("{call sp_archivopublicacion_n(?,?,?,?,?)}");
	                   
	                    st.setInt(1,objarchP.getPublicacion().getIdPublicacion());
                            st.setString(2,objarchP.getDescripcion().name() );
	                    st.setString(3,objarchP.getUrlLocal());
	                    st.setString(4,objarchP.getUrlWeb());
                            st.setBytes(5, objarchP.getArchivo());
	                   
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
	           CallableStatement st=con.prepareCall("{call sp_archivopublicacion_m(?,?,?,?,?,?)}");
	                   st.setInt(1,objarchP.getIdArchivoPublicacion());
                            st.setInt(2,idPublicacion);
                            st.setString(3,objarchP.getDescripcion().name() );
	                    st.setString(4,objarchP.getUrlLocal());
	                    st.setString(5,objarchP.getUrlWeb());
                            st.setBytes(6,objarchP.getArchivo());
	                   
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
                            rs.getDate("fechaPublicacion")                       
                           ),
                            DescripcionArchivo.valueOf(rs.getString("descripcion")),
                            rs.getString("urlLocal"),
                            rs.getString("urlWeb"),
                            rs.getBytes("archivo"))
                   );
            
        } catch (SQLException se) {
            
            throw new DAOException("Error buscando archivopublicacion en DAO", se);
        }
         
	 
    
    }

    @Override
    public ArchivoPublicacion[] leertodoidpublicacion(int idPublicacion) throws DAOException {
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
                            rs.getDate("fechaPublicacion")                      
                           ),
                             DescripcionArchivo.valueOf(rs.getString("descripcion")),
                            rs.getString("urlLocal"),
                            rs.getString("urlWeb"),
                            null)
                
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
                            rs.getDate("fechaPublicacion")                      
                           ),
                             DescripcionArchivo.valueOf(rs.getString("descripcion")),
                            rs.getString("urlLocal"),
                            rs.getString("urlWeb"),
                            null)
                
                  );
            }
            return tribs.toArray(new ArchivoPublicacion[0]);
        } catch (SQLException se) {
            
            throw new DAOException("Error obteniedo todos los archivopublicaciona en DAO: " 
                    + se.getMessage(), se);
        }   
    }

    @Override
    public ArchivoPublicacion crearleer(ArchivoPublicacion objArchip) throws DAOException {
        try{
        CallableStatement st=con.prepareCall("{call sp_archivopublicacion_n1(?,?,?,?,?)}");
        
                           st.setInt(1,objArchip.getPublicacion().getIdPublicacion());
                            st.setString(2,objArchip.getDescripcion().name() );
	                    st.setString(3,objArchip.getUrlLocal());
	                    st.setString(4,objArchip.getUrlWeb());
                            st.setBytes(5, objArchip.getArchivo());
                          
              ResultSet rs = st.executeQuery();
            if (!rs.next()) {
                return null;
            }
           
            return (
                  new ArchivoPublicacion(
                            rs.getInt("idArchivoPublicacion"),
                           
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
                            rs.getDate("fechaPublicacion")                      
                           ),
                             DescripcionArchivo.valueOf(rs.getString("descripcion")),
                            rs.getString("urlLocal"),
                            rs.getString("urlWeb"),null)
                
                  );
            
        } catch (SQLException se) {
            
            throw new DAOException("Error buscando publicacion en DAO", se);
        }
         
	   
    }

    @Override
    public InputStream ArchivoPublico(int idArchivoPublicacion) throws DAOException {
        InputStream pdf = null;
        try {
            CallableStatement st = con.prepareCall("{call sp_archivopublicacion_bcArchi(?)}");
            st.setInt(1, idArchivoPublicacion);
            ResultSet rs = st.executeQuery();            
            rs.next();
            
            pdf = rs.getBinaryStream("archivo");
            
            rs.close();
            st.close();
            con.close();

        } catch (SQLException se) {

            throw new DAOException("Error extrayendo archivo en DAO", se);
        }
        return pdf;
    }

    
    
}

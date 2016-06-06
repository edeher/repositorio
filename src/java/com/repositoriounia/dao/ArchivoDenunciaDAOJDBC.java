/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;

import com.repositoriounia.modelo.ArchivoDenuncia;
import com.repositoriounia.modelo.ArchivoPublicacion;
import com.repositoriounia.modelo.AreaInvestigacion;
import com.repositoriounia.modelo.Denuncia;
import com.repositoriounia.modelo.Denunciante;
import com.repositoriounia.modelo.DescripcionArchivo;
import com.repositoriounia.modelo.LineaInvestigacion;
import com.repositoriounia.modelo.Publicacion;
import com.repositoriounia.modelo.Sexo;
import java.io.InputStream;

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
public class ArchivoDenunciaDAOJDBC implements ArchivoDenunciaDAO{
 private final Connection con;
	    public ArchivoDenunciaDAOJDBC() {
	        this.con = DBManager.getConnection();
	    }
    @Override
    public boolean crear(ArchivoDenuncia objarchD, int idDenuncia) throws DAOException {
        try 
	        {
	           CallableStatement st=con.prepareCall("{call sp_archivodenuncia_n(?,?,?,?)}");
	                   
	                    st.setInt(1,idDenuncia);
	                    st.setString(2,objarchD.getUrlLocal());
	                    st.setString(3,objarchD.getUrlWeb());
                             st.setBytes(4, objarchD.getArchivo());
	                   
	           if (st.execute()) //devuelve verdadero si fallo
            {
               throw new DAOException("Error creando archivo denuncia");
            }
            st.close();
            
            
        } catch (SQLException se) {
            throw new DAOException("Error añadiendo archivo denuncia en DAO", se);
        }
        return true;
    
    }

    @Override
    public boolean modificar(ArchivoDenuncia objarchD, int idDenuncia) throws DAOException {
         try 
	        {
	           CallableStatement st=con.prepareCall("{call sp_archivodenuncia_M(?,?,?,?,?)}");
	                   
	                   st.setInt(1, objarchD.getIdArchivoDenuncia());
                           st.setInt(2,idDenuncia);
	                    st.setString(3,objarchD.getUrlLocal());
	                    st.setString(4,objarchD.getUrlWeb());
                            st.setBytes(5,objarchD.getArchivo());
	           if (st.execute()) //devuelve verdadero si fallo
            {
               throw new DAOException("Error creando archivo denuncia");
            }
            st.close();
            
            
        } catch (SQLException se) {
            throw new DAOException("Error añadiendo archivo denuncia en DAO", se);
        }
        return true;}

    @Override
    public boolean eliminar(int idArchivoDenuncia) throws DAOException {
       try  {
	           CallableStatement st=con.prepareCall("{call sp_archivodenuncia_e(?) }");
            
            st.setInt(1,idArchivoDenuncia);


            if (st.execute()) //devuelve verdadero si fallo
            {
                throw new DAOException("Error modificando archivo denuncia");
            }
            st.close();
            
        } catch (SQLException se) {
            throw new DAOException("Error añadiendo archivo denuncia en DAO", se);
        }
        return true; 
    }

    @Override
    public ArchivoDenuncia leerxid(int idArchivoDenuncia) throws DAOException {
        try{
        CallableStatement st=con.prepareCall("{call sp_archivodenuncia_bco(?)}");
            st.setInt(1,idArchivoDenuncia);
              ResultSet rs = st.executeQuery();
            if (!rs.next()) {
                return null;
            }
           
            return (
                    new ArchivoDenuncia(
                            rs.getInt("idArchivoDenuncia"),
                           new Denuncia(
                                  rs.getInt("idDenuncia"),
                            new Denunciante(
                                rs.getInt("idDenunciante"),

                                rs.getString("nombres"),
                                rs.getString("apellidos"),
                                rs.getString("dni"),
                                Sexo.valueOf(rs.getString("sexo")),
                                rs.getString("direccion"),
                                rs.getString("telefono"),
                                rs.getString("correo")),
                            new ArchivoPublicacion(
                                rs.getInt("idArchivoPublicacion"),
                                new Publicacion(
                                    rs.getInt("idPublicacion"),
                                    new LineaInvestigacion(
                                        rs.getInt("idLineaInvestigacion"),
                                        new AreaInvestigacion(
                                            rs.getInt("idAreaInvestigacion"),
                                            rs.getString("area")),
                                        rs.getString("linea")),
                                    rs.getString("titulo"),
                                    rs.getDate("fechaCarga"),
                                    rs.getDate("fechaPublicacion")),
                                DescripcionArchivo.valueOf(rs.getString("descripcion1")),
                                rs.getString("urlLocal"),
                                rs.getString("urlWeb") ,
                     rs.getBytes("archivo")),
                            rs.getDate("fecha"),
                            rs.getString("descripcion2")                       
                           ),
                            rs.getString("urlLocalD"),
                            rs.getString("urlWebD"),
                     null)
                   );
        } catch (SQLException se) {
            
            throw new DAOException("Error buscando archivodenuncia en DAO", se);
        }
    
    
    }

    @Override
    public ArchivoDenuncia[] leertodo() throws DAOException {
        try  {
             CallableStatement stm=con.prepareCall("{call sp_archivodenuncia_all}");
            ResultSet rs=stm.executeQuery();
                      
            ArrayList<ArchivoDenuncia> tribs = new ArrayList<>(); 
            
            while (rs.next()) {
                tribs.add(
                        
                     new ArchivoDenuncia(
                            rs.getInt("idArchivoDenuncia"),
                           new Denuncia(
                                  rs.getInt("idDenuncia"),
                            new Denunciante(
                                rs.getInt("idDenunciante"),

                                rs.getString("nombres"),
                                rs.getString("apellidos"),
                                rs.getString("dni"),
                                Sexo.valueOf(rs.getString("sexo")),
                                rs.getString("direccion"),
                                rs.getString("telefono"),
                                rs.getString("correo")),
                            new ArchivoPublicacion(
                                rs.getInt("idArchivoPublicacion"),
                                new Publicacion(
                                    rs.getInt("idPublicacion"),
                                    new LineaInvestigacion(
                                        rs.getInt("idLineaInvestigacion"),
                                        new AreaInvestigacion(
                                            rs.getInt("idAreaInvestigacion"),
                                            rs.getString("area")),
                                        rs.getString("linea")),
                                    rs.getString("titulo"),
                                    rs.getDate("fechaCarga"),
                                    rs.getDate("fechaPublicacion")),
                                DescripcionArchivo.valueOf(rs.getString("descripcion1")),
                                rs.getString("urlLocal"),
                                rs.getString("urlWeb") ,
                     rs.getBytes("archivo")),
                            rs.getDate("fecha"),
                            rs.getString("descripcion2")                        
                           ),
                            rs.getString("urlLocalD"),
                            rs.getString("urlWebD"),
                    null)
                
                  );
            }
            return tribs.toArray(new ArchivoDenuncia[0]);
        } catch (SQLException se) {
            
            throw new DAOException("Error obteniedo todos los archivodenuncia en DAO: " 
                    + se.getMessage(), se);
        }   
    
    
    }

    @Override
    public ArchivoDenuncia[] leertodo(int idDenuncia) throws DAOException {
        
    try  {
             CallableStatement st=con.prepareCall("{call sp_archivodenuncia_bco1(?)}");
            st.setInt(1,idDenuncia);
              ResultSet rs = st.executeQuery();
                      
            ArrayList<ArchivoDenuncia> tribs = new ArrayList<>(); 
            
            while (rs.next()) {
                tribs.add(
                        
                     new ArchivoDenuncia(
                            rs.getInt("idArchivoDenuncia"),
                           new Denuncia(
                                    rs.getInt("idDenuncia"),
                            new Denunciante(
                                rs.getInt("idDenunciante"),

                                rs.getString("nombres"),
                                rs.getString("apellidos"),
                                rs.getString("dni"),
                                Sexo.valueOf(rs.getString("sexo")),
                                rs.getString("direccion"),
                                rs.getString("telefono"),
                                rs.getString("correo")),
                            new ArchivoPublicacion(
                                rs.getInt("idArchivoPublicacion"),
                                new Publicacion(
                                    rs.getInt("idPublicacion"),
                                    new LineaInvestigacion(
                                        rs.getInt("idLineaInvestigacion"),
                                        new AreaInvestigacion(
                                            rs.getInt("idAreaInvestigacion"),
                                            rs.getString("area")),
                                        rs.getString("linea")),
                                    rs.getString("titulo"),
                                    rs.getDate("fechaCarga"),
                                    rs.getDate("fechaPublicacion")),
                                DescripcionArchivo.valueOf(rs.getString("descripcion1")),
                                rs.getString("urlLocal"),
                                rs.getString("urlWeb") ,
                     rs.getBytes("archivo")),
                            rs.getDate("fecha"),
                            rs.getString("descripcion2")                      
                           ),
                            rs.getString("urlLocalD"),
                            rs.getString("urlWebD"),
                     null)
                
                  );
            }
            return tribs.toArray(new ArchivoDenuncia[0]);
        } catch (SQLException se) {
            
            throw new DAOException("Error obteniedo todos los archivodenuncia en DAO: " 
                    + se.getMessage(), se);
        }   
    
    
    
    
    }

    @Override
    public InputStream ArchivoDenuncia(int idArchivoDenuncia) throws DAOException {
        InputStream pdf = null;
        try {
            CallableStatement st = con.prepareCall("{call sp_archivodenuncia_bcoArchi(?)}");
            st.setInt(1, idArchivoDenuncia);
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

    @Override
    public ArchivoDenuncia crearleer(ArchivoDenuncia objArchiD) throws DAOException {
         try{
        CallableStatement st=con.prepareCall("{call sp_archivodenuncia_n(?,?,?,?)}");
	                   
	                    st.setInt(1,objArchiD.getDenuncia().getIdDenuncia());
	                    st.setString(2,objArchiD.getUrlLocal());
	                    st.setString(3,objArchiD.getUrlWeb());
                             st.setBytes(4, objArchiD.getArchivo());
                          
              ResultSet rs = st.executeQuery();
            if (!rs.next()) {
                return null;
            }
           
            return (
                   new ArchivoDenuncia(
                            rs.getInt("idArchivoDenuncia"),
                           new Denuncia(
                                    rs.getInt("idDenuncia"),
                            new Denunciante(
                                rs.getInt("idDenunciante"),

                                rs.getString("nombres"),
                                rs.getString("apellidos"),
                                rs.getString("dni"),
                                Sexo.valueOf(rs.getString("sexo")),
                                rs.getString("direccion"),
                                rs.getString("telefono"),
                                rs.getString("correo")),
                            new ArchivoPublicacion(
                                rs.getInt("idArchivoPublicacion"),
                                new Publicacion(
                                    rs.getInt("idPublicacion"),
                                    new LineaInvestigacion(
                                        rs.getInt("idLineaInvestigacion"),
                                        new AreaInvestigacion(
                                            rs.getInt("idAreaInvestigacion"),
                                            rs.getString("area")),
                                        rs.getString("linea")),
                                    rs.getString("titulo"),
                                    rs.getDate("fechaCarga"),
                                    rs.getDate("fechaPublicacion")),
                                DescripcionArchivo.valueOf(rs.getString("descripcion1")),
                                rs.getString("urlLocal"),
                                rs.getString("urlWeb") ,
                     rs.getBytes("archivo")),
                            rs.getDate("fecha"),
                            rs.getString("descripcion2")                      
                           ),
                            rs.getString("urlLocalD"),
                            rs.getString("urlWebD"),
                     null)
                
                  );
            
        } catch (SQLException se) {
            
            throw new DAOException("Error buscando publicacion en DAO", se);
        }
         
    }

    
    
}

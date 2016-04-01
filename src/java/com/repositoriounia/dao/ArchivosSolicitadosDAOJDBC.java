/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;

import com.repositoriounia.modelo.ArchivoPublicacion;
import com.repositoriounia.modelo.ArchivosSolicitados;
import com.repositoriounia.modelo.Respuesta;
import com.repositoriounia.modelo.Solicitante;

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
public class ArchivosSolicitadosDAOJDBC implements ArchivosSolicitadosDAO{
private final Connection con;

    public ArchivosSolicitadosDAOJDBC() {
        this.con = DBManager.getConnection();
    }

    @Override
    public boolean crear( int idSolicitante, int idArchivoPublicacion) throws DAOException {
          try 
	        {
	           CallableStatement st=con.prepareCall("{call sp_archivossolicitados_n(?,?)}");
	                   
	                    st.setInt(1,idSolicitante);
                             st.setInt(2,idArchivoPublicacion);
                           
                            
	                   
	           if (st.execute()) //devuelve verdadero si fallo
            {
               throw new DAOException("Error creando archivossolicitados");
            }
            st.close();
            
            
        } catch (SQLException se) {
            throw new DAOException("Error añadiendo archivo archivossolicitados en DAO", se);
        }
        return true;
    
        
        
    }

    @Override
    public boolean modificar(ArchivosSolicitados objarchS, int idSolicitante, int idArchivoPublicacion) throws DAOException {
       
    try 
	        {
	           CallableStatement st=con.prepareCall("{call sp_archivossolicitados_m(?,?,?,?,?)}");
	                   
	                    st.setInt(1,objarchS.getIdArchivoSolicitado());
                            
                            st.setString(2,objarchS.getRespuesta().name());
	                    st.setDate(3,new java.sql.Date(objarchS.getFechaRespuesta().getTime()));
                            st.setInt(4,idSolicitante);
                            st.setInt(5,idArchivoPublicacion);
                            
	                   
	           if (st.execute()) //devuelve verdadero si fallo
            {
               throw new DAOException("Error modificando archivossolicitados denuncia");
            }
            st.close();
            
            
        } catch (SQLException se) {
            throw new DAOException("Error modificando archivo archivossolicitados en DAO", se);
        }
        return true;
    
    
    
    
    }

    @Override
    public boolean eliminar(int idArchivoSolicitado) throws DAOException {
         try  {
	           CallableStatement st=con.prepareCall("{call sp_archivossolicitados_e(?) }");
            
            st.setInt(1,idArchivoSolicitado);


            if (st.execute()) //devuelve verdadero si fallo
            {
                throw new DAOException("Error eliminado archivossolicitados");
            }
            st.close();
            
        } catch (SQLException se) {
            throw new DAOException("Error eliminando archivo archivossolicitados en DAO", se);
        }
        return true; 
    
    }

    @Override
    public ArchivosSolicitados leerxid(int idArchivoSolicitado) throws DAOException {
         try{
        CallableStatement st=con.prepareCall("{call sp_archivossolicitados_bco(?)}");
            st.setInt(1,idArchivoSolicitado);
              ResultSet rs = st.executeQuery();
            if (!rs.next()) {
                return null;
            }
           
            return (
                    new ArchivosSolicitados(
                            rs.getInt("idArchivoSolicitado"),
                            new Solicitante(rs.getInt("idSolicitante")),
                            new ArchivoPublicacion(rs.getInt("idArchivoPublicacion")),
                            rs.getDate("fechaSolicitud"),
                            Respuesta.valueOf(rs.getString("respuesta")),
                            rs.getDate("fechaRespuesta"))
                   );
            
        } catch (SQLException se) {
            
            throw new DAOException("Error buscando archivopublicacion en DAO", se);
        }
         
	 
    
    }

    @Override
    public ArchivosSolicitados[] leertodo(int idSolicitante) throws DAOException {
       try{
        CallableStatement st=con.prepareCall("{call sp_archivossolicitados_bco1(?)}");
            st.setInt(1,idSolicitante);
             ResultSet rs = st.executeQuery();
                      
            ArrayList<ArchivosSolicitados> tribs = new ArrayList<>(); 
            
            while (rs.next()) {
                tribs.add(
                        
                      new ArchivosSolicitados(
                            rs.getInt("idArchivoSolicitado"),
                            new Solicitante(rs.getInt("idSolicitante")),
                            new ArchivoPublicacion(rs.getInt("idArchivoPublicacion")),
                            rs.getDate("fechaSolicitud"),
                            Respuesta.valueOf(rs.getString("respuesta")),
                            rs.getDate("fechaRespuesta"))
                
                  );
            }
            return tribs.toArray(new ArchivosSolicitados[0]);
        } catch (SQLException se) {
            
            throw new DAOException("Error obteniedo todos los archivopublicacion en DAO: " 
                    + se.getMessage(), se);
        }   
    
	 
    
    }

    @Override
    public ArchivosSolicitados[] leertodo2(int idArchivoPublicacion) throws DAOException {
       try{
        CallableStatement st=con.prepareCall("{call sp_archivossolicitados_bco2(?)}");
            st.setInt(1,idArchivoPublicacion);
             ResultSet rs = st.executeQuery();
                      
            ArrayList<ArchivosSolicitados> tribs = new ArrayList<>(); 
            
            while (rs.next()) {
                tribs.add(
                        
                      new ArchivosSolicitados(
                            rs.getInt("idArchivoSolicitado"),
                            new Solicitante(rs.getInt("idSolicitante")),
                            new ArchivoPublicacion(rs.getInt("idArchivoPublicacion")),
                            rs.getDate("fechaSolicitud"),
                            Respuesta.valueOf(rs.getString("respuesta")),
                            rs.getDate("fechaRespuesta"))
                
                  );
            }
            return tribs.toArray(new ArchivosSolicitados[0]);
        } catch (SQLException se) {
            
            throw new DAOException("Error obteniedo todos los archivopublicacion en DAO: " 
                    + se.getMessage(), se);
        }   
    
	 
    }

    @Override
    public ArchivosSolicitados[] leertodo() throws DAOException {
         try  {
             CallableStatement stm=con.prepareCall("{call sp_archivossolicitados_all()}");
            ResultSet rs=stm.executeQuery();
                      
            ArrayList<ArchivosSolicitados> tribs = new ArrayList<>(); 
            
            while (rs.next()) {
                tribs.add(
                        
                   new ArchivosSolicitados(
                            rs.getInt("idArchivoSolicitado"),
                            new Solicitante(rs.getInt("idSolicitante")),
                            new ArchivoPublicacion(rs.getInt("idArchivoPublicacion")),
                            rs.getDate("fechaSolicitud"),
                            Respuesta.valueOf(rs.getString("respuesta")),
                            rs.getDate("fechaRespuesta"))
                
                
                  );
            }
            return tribs.toArray(new ArchivosSolicitados[0]);
        } catch (SQLException se) {
            
            throw new DAOException("Error obteniedo todos los archivopublicaciona en DAO: " 
                    + se.getMessage(), se);
        }   
    
    
    }

    @Override
    public boolean crear(Solicitante objsolici, int idArchivoPublicacion) throws DAOException {
        try 
	        {
	           CallableStatement st=con.prepareCall("{call sp_archivossolicitados_n1(?,?,?,?,?,?,?,?,?,?,?)}");
	                   
	                    st.setString(1,objsolici.getNombres());
                            st.setString(2,objsolici.getApellidos());
                            st.setString(3,objsolici.getDni());
                            st.setString(4,objsolici.getSexo().name());
                            st.setString(5,objsolici.getDireccion());
                            st.setString(6,objsolici.getTelefono());
                            st.setString(7,objsolici.getCorrero());
                            st.setString(8,objsolici.getTipoEntidad().name());
                            st.setString(9,objsolici.getEntidad());
                            st.setString(10,objsolici.getAreaTrabajo());
                            st.setInt(11,idArchivoPublicacion);
                            
	                   
	           if (st.execute()) //devuelve verdadero si fallo
            {
               throw new DAOException("Error creando archivossolicitados denuncia");
            }
            st.close();
            
            
        } catch (SQLException se) {
            throw new DAOException("Error añadiendo archivo archivossolicitados en DAO", se);
        }
        return true;
    
    
    
    
    }

   
}

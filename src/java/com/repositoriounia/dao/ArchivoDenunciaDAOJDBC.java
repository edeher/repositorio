/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;

import com.repositoriounia.modelo.ArchivoDenuncia;
import com.repositoriounia.modelo.Denuncia;

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
	           CallableStatement st=con.prepareCall("{call sp_archivodenuncia_n(?,?,?)}");
	                   
	                    st.setInt(1,idDenuncia);
	                    st.setString(2,objarchD.getUrlLocal());
	                    st.setString(3,objarchD.getUrlWeb());
                            
	                   
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
	           CallableStatement st=con.prepareCall("{call sp_archivodenuncia_M(?,?,?,?)}");
	                   
	                   st.setInt(1, objarchD.getIdArchivoDenuncia());
	                    st.setString(2,objarchD.getUrlLocal());
	                    st.setString(3,objarchD.getUrlWeb());
                             st.setInt(4,idDenuncia);
	                   
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
                                   rs.getInt("idDenuncia")                         
                           ),
                            rs.getString("urlLocal"),
                            rs.getString("urlWeb"))
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
                                   rs.getInt("idDenuncia")                         
                           ),
                            rs.getString("urlLocal"),
                            rs.getString("urlWeb"))
                
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
                                   rs.getInt("idDenuncia")                         
                           ),
                            rs.getString("urlLocal"),
                            rs.getString("urlWeb"))
                
                  );
            }
            return tribs.toArray(new ArchivoDenuncia[0]);
        } catch (SQLException se) {
            
            throw new DAOException("Error obteniedo todos los archivodenuncia en DAO: " 
                    + se.getMessage(), se);
        }   
    
    
    
    
    }

    
    
}

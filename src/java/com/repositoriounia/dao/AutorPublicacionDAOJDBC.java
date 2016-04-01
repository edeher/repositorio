/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;

import com.repositoriounia.modelo.Autor;
import com.repositoriounia.modelo.AutorPublicacion;
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
public class AutorPublicacionDAOJDBC implements AutorPublicacionDAO{
    
    private final Connection con;

    public AutorPublicacionDAOJDBC() {
        this.con = DBManager.getConnection();
    }
    

    @Override
    public boolean crear(Autor objAu, Publicacion objPu) throws DAOException {
        try 
	        {
	           CallableStatement st=con.prepareCall("{call sp_autorpublicacion_n(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
	                   
	                    st.setString(1,objAu.getNombres());
                            st.setString(2,objAu.getApellidos());
                            st.setString(3,objAu.getDni());
                            st.setString(4,objAu.getSexo().name());
                            st.setString(5,objAu.getDireccion());
                            st.setString(6,objAu.getTelefono());
                            st.setString(7,objAu.getCorrero());
                            st.setInt(8, objAu.getEscuela().getIdEscuela());
                            st.setString(9,objAu.getTipoAutor().name());
                            st.setString(10,objAu.getProfesion());
                            st.setString(11, objAu.getEspecialidad());
                            st.setString(12,objAu.getGrado());
                            
                            st.setInt(13,objPu.getLineaInvestigacion().getIdLineaInvestigacion());
                            st.setString(14,objPu.getTitulo());
                            st.setDate(15, new java.sql.Date(objPu.getFechaPublicacion().getTime()));
                           
                       
	           if (st.execute()) //devuelve verdadero si fallo
            {
               throw new DAOException("Error creando autor ");
            }
            st.close();
            
        } catch (SQLException se) {
            throw new DAOException("Error añadiendo autor en DAO", se);
        }
        return true;
    
    
    }

    @Override
    public boolean crear(int idAutor, Publicacion objPu) throws DAOException {
         try 
	        {
	           CallableStatement st=con.prepareCall("{call sp_autorpublicacion_n1(?,?,?,?)}");
	                   
	                   
                            st.setInt(1,idAutor);
                            
                            
                            st.setInt(2,objPu.getLineaInvestigacion().getIdLineaInvestigacion());
                            st.setString(3,objPu.getTitulo());
                            st.setDate(4, new java.sql.Date(objPu.getFechaPublicacion().getTime()));
                           
                       
	           if (st.execute()) //devuelve verdadero si fallo
            {
               throw new DAOException("Error creando autor ");
            }
            st.close();
            
        } catch (SQLException se) {
            throw new DAOException("Error añadiendo autor en DAO", se);
        }
        return true;
    }

    @Override
    public boolean crear(int idAutor, int idPublicacion) throws DAOException {
         try 
	        {
	           CallableStatement st=con.prepareCall("{call sp_autorpublicacion_n2(?,?)}");
	                   
	                    
                            st.setInt(1, idAutor);
                          
                            
                            st.setInt(2, idPublicacion);
                            
                       
	           if (st.execute()) //devuelve verdadero si fallo
            {
               throw new DAOException("Error creando autor ");
            }
            st.close();
            
        } catch (SQLException se) {
            throw new DAOException("Error añadiendo autor en DAO", se);
        }
        return true;
    
    }

    @Override
    public boolean crear(Autor objAu, int idPublicacion) throws DAOException {
         try 
	        {
	           CallableStatement st=con.prepareCall("{call sp_autorpublicacion_n3(?,?,?,?,?,?,?,?,?,?,?,?,?)}");
	                   
	                    st.setString(1,objAu.getNombres());
                            st.setString(2,objAu.getApellidos());
                            st.setString(3,objAu.getDni());
                            st.setString(4,objAu.getSexo().name());
                            st.setString(5,objAu.getDireccion());
                            st.setString(6,objAu.getTelefono());
                            st.setString(7,objAu.getCorrero());
                            st.setInt(8, objAu.getEscuela().getIdEscuela());
                            st.setString(9,objAu.getTipoAutor().name());
                            st.setString(10,objAu.getProfesion());
                            st.setString(11, objAu.getEspecialidad());
                            st.setString(12,objAu.getGrado());
                            
                            st.setInt(13,idPublicacion);
                           
                       
	           if (st.execute()) //devuelve verdadero si fallo
            {
               throw new DAOException("Error creando autor ");
            }
            st.close();
            
        } catch (SQLException se) {
            throw new DAOException("Error añadiendo autor en DAO", se);
        }
        return true;
    }

    @Override
    public boolean modificar(AutorPublicacion objAuP, Autor objAu, Publicacion objPu) throws DAOException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(int idAutorPublicacion) throws DAOException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public AutorPublicacion leerxid(int idAutorPublicacion) throws DAOException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public AutorPublicacion[] leertodo() throws DAOException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    
}

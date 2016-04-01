/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;

import com.repositoriounia.modelo.Autor;
import com.repositoriounia.modelo.Escuela;
import com.repositoriounia.modelo.Sexo;
import com.repositoriounia.modelo.TipoAutor;
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
public class AutorDAOJDBC implements AutorDAO{
    private final Connection con;

    public AutorDAOJDBC() {
        this.con = DBManager.getConnection();
    }

    @Override
    public boolean crear(Autor objAu, int idEscuela) throws DAOException {
        
    try 
	        {
	           CallableStatement st=con.prepareCall("{call sp_autor_n(?,?,?,?,?,?,?,?,?,?,?,?)}");
	                   
	                    st.setString(1,objAu.getNombres());
                            st.setString(2,objAu.getApellidos());
                            st.setString(3,objAu.getDni());
                            st.setString(4,objAu.getSexo().name());
                            st.setString(5,objAu.getDireccion());
                            st.setString(6,objAu.getTelefono());
                            st.setString(7,objAu.getCorrero());
                            
                            st.setInt(8, idEscuela);
                            
                            st.setString(9,objAu.getTipoAutor().name());
                            st.setString(10,objAu.getProfesion());
                            st.setString(11, objAu.getEspecialidad());
                            st.setString(12,objAu.getGrado());
                           
                       
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
    public boolean crear(Autor objAu, int idPersona, int idEscuela) throws DAOException {
       try 
	        {
	           CallableStatement st=con.prepareCall("{call sp_autor_n1(?,?,?,?,?,?)}");
	                   
	                    st.setInt(1, idPersona);
                            
                            st.setInt(2, idEscuela);
                            
                            st.setString(3,objAu.getTipoAutor().name());
                            st.setString(4,objAu.getProfesion());
                            st.setString(5, objAu.getEspecialidad());
                            st.setString(6,objAu.getGrado());
                           
                       
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
    public boolean modificar(Autor objAu, int idEscuela) throws DAOException {
       try 
	        {
	           CallableStatement st=con.prepareCall("{call sp_autor_m(?,?,?,?,?,?,?,?,?,?,?,?,?)}");
	                   
	                    st.setInt(1, objAu.getIdAutor());
                            st.setString(2,objAu.getNombres());
                            st.setString(3,objAu.getApellidos());
                            st.setString(4,objAu.getDni());
                            st.setString(5,objAu.getSexo().name());
                            st.setString(6,objAu.getDireccion());
                            st.setString(7,objAu.getTelefono());
                            st.setString(8,objAu.getCorrero());
                            
                            st.setInt(9, idEscuela);
                            st.setString(10,objAu.getTipoAutor().name());
                            st.setString(11,objAu.getProfesion());
                            st.setString(12, objAu.getEspecialidad());
                            st.setString(13,objAu.getGrado());
                           
                           
                            
	                   
	           if (st.execute()) //devuelve verdadero si fallo
            {
               throw new DAOException("Error modificando autor ");
            }
            st.close();
            
            
        } catch (SQLException se) {
            throw new DAOException("Error modificando autor en DAO", se);
        }
        return true;
    
    }

    @Override
    public boolean eliminar(int idAutor) throws DAOException {
       try  {
	           CallableStatement st=con.prepareCall("{call sp_autor_e(?) }");
            
            st.setInt(1,idAutor);


            if (st.execute()) //devuelve verdadero si fallo
            {
                throw new DAOException("Error eliminando autor");
            }
            st.close();
            
        } catch (SQLException se) {
            throw new DAOException("Error eliminando  autor en DAO", se);
        }
        return true; 
    
        }

    @Override
    public Autor leerxid(int idAutor) throws DAOException {
        
    try{
        CallableStatement st=con.prepareCall("{call sp_autor_bco(?)}");
            st.setInt(1,idAutor);
              ResultSet rs = st.executeQuery();
            if (!rs.next()) {
                return null;
            }
           
            return (
                    new Autor(
                            rs.getInt("idAutor"),
                            new Escuela(rs.getString("descripcion")),
                            
                            TipoAutor.valueOf(rs.getString("tipoAutor")),
                            rs.getString("profesion"),
                            rs.getString("especialidad"),
                            rs.getString("grado"),
                            
                            rs.getString("nombres"),
                            rs.getString("apellidos"),
                            rs.getString("dni"),
                            Sexo.valueOf(rs.getString("sexo")),
                            rs.getString("direccion"),
                            rs.getString("telefono"),
                            rs.getString("correo"))
                            
                            
                   );
            
        } catch (SQLException se) {
            
            throw new DAOException("Error buscando autor en DAO", se);
        }
         
	 
    
    }

    @Override
    public Autor[] leertodo() throws DAOException {
        
     try  {
             CallableStatement stm=con.prepareCall("{call sp_autor_all()}");
            ResultSet rs=stm.executeQuery();
                      
            ArrayList<Autor> tribs = new ArrayList<>(); 
            
            while (rs.next()) {
                tribs.add(
                        
                  new Autor(
                            rs.getInt("idAutor"),
                            new Escuela(rs.getString("descripcion")),
                            
                            TipoAutor.valueOf(rs.getString("tipoAutor")),
                            rs.getString("profesion"),
                            rs.getString("especialidad"),
                            rs.getString("grado"),
                            
                            rs.getString("nombres"),
                            rs.getString("apellidos"),
                            rs.getString("dni"),
                            Sexo.valueOf(rs.getString("sexo")),
                            rs.getString("direccion"),
                            rs.getString("telefono"),
                            rs.getString("correo"))
                            
                            
                   );
            }
            return tribs.toArray(new Autor[0]);
        } catch (SQLException se) {
            
            throw new DAOException("Error obteniedo todos los autores en DAO: " 
                    + se.getMessage(), se);
        }   
    
    }

   

 
    
}

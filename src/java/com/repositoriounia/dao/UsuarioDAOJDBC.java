/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;

import com.repositoriounia.modelo.Persona;
import com.repositoriounia.modelo.Sexo;
import com.repositoriounia.modelo.TipoUsuario;
import com.repositoriounia.modelo.Usuario;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
/**

/**
 *
 * @author Mi Laptop
 */
public class UsuarioDAOJDBC implements UsuarioDAO{
    private final Connection con;

    public UsuarioDAOJDBC() {
        this.con =DBManager.getConnection();
    }
    
    @Override
    public boolean crear(Usuario objUs) throws DAOException {
     try 
	        {
	           CallableStatement st=con.prepareCall("{call sp_usuario_n(?,?,?,?,?,?,?,?,?,?)}");
	                   
	                    st.setString(1,objUs.getPersona().getNombres());
                            st.setString(2,objUs.getPersona().getApellidos());
                            st.setString(3,objUs.getPersona().getDni());
                            st.setString(4,objUs.getPersona().getSexo().name());
                            st.setString(5,objUs.getPersona().getDireccion());
                            st.setString(6,objUs.getPersona().getTelefono());
                            st.setString(7,objUs.getPersona().getCorrero());
                            
                            st.setString(8,objUs.getUsuario());
                            
                            st.setString(9,objUs.getPassword());
                            st.setString(10,objUs.getTipo().name());
                    
                           
                       
	           if (st.execute()) //devuelve verdadero si fallo
            {
               throw new DAOException("Error creando usuario ");
            }
            st.close();
            
        } catch (SQLException se) {
            throw new DAOException("Error añadiendo usuario en DAO", se);
        }
        return true;   
    }

    @Override
    public boolean modificar(Usuario objUs) throws DAOException {
        try 
	        {
	           CallableStatement st=con.prepareCall("{call sp_usuario_m(?,?,?,?,?,?,?,?,?,?,?)}");
                            st.setInt(1, objUs.getIdUsuario());
	                    st.setString(2,objUs.getPersona().getNombres());
                            st.setString(3,objUs.getPersona().getApellidos());
                            st.setString(4,objUs.getPersona().getDni());
                            st.setString(5,objUs.getPersona().getSexo().name());
                            st.setString(6,objUs.getPersona().getDireccion());
                            st.setString(7,objUs.getPersona().getTelefono());
                            st.setString(8,objUs.getPersona().getCorrero());
                            
                            st.setString(9,objUs.getUsuario());
                            
                            st.setString(10,objUs.getPassword());
                            st.setString(11,objUs.getTipo().name());
                    
                           
                       
	           if (st.execute()) //devuelve verdadero si fallo
            {
               throw new DAOException("Error modificando usuario ");
            }
            st.close();
            
        } catch (SQLException se) {
            throw new DAOException("Error modificando usuario en DAO", se);
        }
        return true;    
    }

    @Override
    public boolean eliminar(int idUsuario) throws DAOException {
        try  {
	           CallableStatement st=con.prepareCall("{call sp_usuario_e(?) }");
            
            st.setInt(1,idUsuario);


            if (st.execute()) //devuelve verdadero si fallo
            {
                throw new DAOException("Error eliminando usuario");
            }
            st.close();
            
        } catch (SQLException se) {
            throw new DAOException("Error eliminando  usuario en DAO", se);
        }
        return true; 
    }

    @Override
    public Usuario leerxid(int idUsuario) throws DAOException {
        try{
        CallableStatement st=con.prepareCall("{call sp_usuario_bco(?)}");
            st.setInt(1,idUsuario);
              ResultSet rs = st.executeQuery();
            if (!rs.next()) {
                return null;
            }
           
            return (
                    new Usuario(
                            rs.getInt("idUsuario"),
                           new Persona(
                            
                            rs.getString("nombres")
                           ),
                            
                            rs.getString("usuario"),
                            rs.getString("contrasena"),
                            TipoUsuario.valueOf(rs.getString("tipo"))
                            )
                            
                            
                   );
            
        } catch (SQLException se) {
            
            throw new DAOException("Error buscando usuario en DAO", se);
        }
    }

    @Override
    public Usuario[] leertodo() throws DAOException {
         try  {
             CallableStatement stm=con.prepareCall("{call sp_usuario_all()}");
            ResultSet rs=stm.executeQuery();
                      
            ArrayList<Usuario> tribs = new ArrayList<>(); 
            
            while (rs.next()) {
                tribs.add(
                        
                   new Usuario(
                            rs.getInt("idUsuario"),
                           new Persona(
                            
                            rs.getString("nombres")
                           ),
                            
                            rs.getString("usuario"),
                            rs.getString("contrasena"),
                            TipoUsuario.valueOf(rs.getString("tipo"))
                            )
                            
                            
                   );
            }
            return tribs.toArray(new Usuario[0]);
        } catch (SQLException se) {
            
            throw new DAOException("Error obteniedo todos los usuario en DAO: " 
                    + se.getMessage(), se);
        }   
   }

    @Override
    public boolean crear(Usuario objUs, int idPersona) throws DAOException {
        try 
	        {
	           CallableStatement st=con.prepareCall("{call sp_usuario_n1(?,?,?,?)}");
	                   
	                    st.setInt(1,idPersona);
                            
                            st.setString(2,objUs.getUsuario());
                            
                            st.setString(3,objUs.getPassword());
                            st.setString(4,objUs.getTipo().name());
                    
                           
                       
	           if (st.execute()) //devuelve verdadero si fallo
            {
               throw new DAOException("Error creando usuario ");
            }
            st.close();
            
        } catch (SQLException se) {
            throw new DAOException("Error añadiendo usuario en DAO", se);
        }
        return true;   
    }

    public boolean modificar(Usuario objUs,int idUsuario) throws DAOException {
         try 
	        {
	           CallableStatement st=con.prepareCall("{call sp_usuario_m1(?,?)}");
                            st.setInt(1,idUsuario);
	                    
                            st.setString(2,objUs.getTipo().name());
                    
                           
                       
	           if (st.execute()) //devuelve verdadero si fallo
            {
               throw new DAOException("Error modificando usuario ");
            }
            st.close();
            
        } catch (SQLException se) {
            throw new DAOException("Error modificando usuario en DAO", se);
        }
        return true;    
    }
    
}

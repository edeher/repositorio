/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;

import com.repositoriounia.modelo.Denunciante;
import com.repositoriounia.modelo.Sexo;
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
public class DenuncianteDAOJDBC implements DenuncianteDAO{
private final Connection con;

    public DenuncianteDAOJDBC() {
        this.con = DBManager.getConnection();
    }

    @Override
    public boolean crear(Denunciante objDe) throws DAOException {
         
    try 
	        {
	           CallableStatement st=con.prepareCall("{call sp_denunciante_n(?,?,?,?,?,?,?)}");
	                   
	                    st.setString(1,objDe.getNombres());
                            st.setString(2,objDe.getApellidos());
                            st.setString(3,objDe.getDni());
                            st.setString(4,objDe.getSexo().name());
                            st.setString(5,objDe.getDireccion());
                            st.setString(6,objDe.getTelefono());
                            st.setString(7,objDe.getCorrero());
                            
	           if (st.execute()) //devuelve verdadero si fallo
            {
               throw new DAOException("Error creando denunciante ");
            }
            st.close();
            
        } catch (SQLException se) {
            throw new DAOException("Error añadiendo denunciante en DAO", se);
        }
        return true;
    }

    @Override
    public boolean crear(int idPersona) throws DAOException {
      try 
	        {
	           CallableStatement st=con.prepareCall("{call sp_denunciante_n1(?)}");
	                   
	                    st.setInt(1,idPersona);
                            
                       
                       
	           if (st.execute()) //devuelve verdadero si fallo
            {
               throw new DAOException("Error creando denunciante ");
            }
            st.close();
            
        } catch (SQLException se) {
            throw new DAOException("Error añadiendo denunciante en DAO", se);
        }
        return true;
    }

    @Override
    public boolean modificar(Denunciante objDe) throws DAOException {
    try 
	        {
	           CallableStatement st=con.prepareCall("{call sp_denunciante_m(?,?,?,?,?,?,?,?)}");
                            st.setInt(1,objDe.getIdDenunciante());
	                    st.setString(2,objDe.getNombres());
                            st.setString(3,objDe.getApellidos());
                            st.setString(4,objDe.getDni());
                            st.setString(5,objDe.getSexo().name());
                            st.setString(6,objDe.getDireccion());
                            st.setString(7,objDe.getTelefono());
                            st.setString(8,objDe.getCorrero());
                            
                           
                           
                       
	           if (st.execute()) //devuelve verdadero si fallo
            {
               throw new DAOException("Error modificando denunciante ");
            }
            st.close();
            
        } catch (SQLException se) {
            throw new DAOException("Error modificando denunciante en DAO", se);
        }
        return true;
    }

    @Override
    public boolean eliminar(int idDenunciante) throws DAOException {
       try  {
	           CallableStatement st=con.prepareCall("{call sp_denunciante_e(?) }");
            
            st.setInt(1,idDenunciante);


            if (st.execute()) //devuelve verdadero si fallo
            {
                throw new DAOException("Error eliminando denunciante");
            }
            st.close();
            
        } catch (SQLException se) {
            throw new DAOException("Error eliminando  denunciante en DAO", se);
        }
        return true; 
    
        } 

    @Override
    public Denunciante leerxid(int idDenunciante) throws DAOException {
         try{
        CallableStatement st=con.prepareCall("{call sp_denunciante_bco(?)}");
            st.setInt(1,idDenunciante);
              ResultSet rs = st.executeQuery();
            if (!rs.next()) {
                return null;
            }
           
            return (
                    new Denunciante(
                            rs.getInt("idDenunciante"),
                           
                            rs.getString("nombres"),
                            rs.getString("apellidos"),
                            rs.getString("dni"),
                            Sexo.valueOf(rs.getString("sexo")),
                            rs.getString("direccion"),
                            rs.getString("telefono"),
                            rs.getString("correo"))
                            
                            
                   );
            
        } catch (SQLException se) {
            
            throw new DAOException("Error buscando denunciantes en DAO", se);
        }
    }

    @Override
    public Denunciante[] leertodo() throws DAOException {
       try  {
             CallableStatement stm=con.prepareCall("{call sp_denunciante_all()}");
            ResultSet rs=stm.executeQuery();
                      
            ArrayList<Denunciante> tribs = new ArrayList<>(); 
            
            while (rs.next()) {
                tribs.add(
                        
                  new Denunciante(
                            rs.getInt("idDenunciante"),
                           
                            rs.getString("nombres"),
                            rs.getString("apellidos"),
                            rs.getString("dni"),
                            Sexo.valueOf(rs.getString("sexo")),
                            rs.getString("direccion"),
                            rs.getString("telefono"),
                            rs.getString("correo"))
                            
                            
                   );
            }
            return tribs.toArray(new Denunciante[0]);
        } catch (SQLException se) {
            
            throw new DAOException("Error obteniedo todos los denunciantes en DAO: " 
                    + se.getMessage(), se);
        }     
    
    }
    

    
}

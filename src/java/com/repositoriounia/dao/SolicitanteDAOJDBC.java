/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;

import com.repositoriounia.modelo.Sexo;
import com.repositoriounia.modelo.Solicitante;
import com.repositoriounia.modelo.TipoEntidad;
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
public class SolicitanteDAOJDBC implements SolicitanteDAO{
    private final Connection con;

    public SolicitanteDAOJDBC() {
        this.con = DBManager.getConnection();
    }
    
    @Override
    public boolean crear(Solicitante objSo) throws DAOException {
        try 
	        {
	           CallableStatement st=con.prepareCall("{call sp_solicitante_n(?,?,?,?,?,?,?,?,?,?)}");
	                   
	                    st.setString(1,objSo.getNombres());
                            st.setString(2,objSo.getApellidos());
                            st.setString(3,objSo.getDni());
                            st.setString(4,objSo.getSexo().name());
                            st.setString(5,objSo.getDireccion());
                            st.setString(6,objSo.getTelefono());
                            st.setString(7,objSo.getCorrero());
                            
                            st.setString(8, objSo.getTipoEntidad().name());
                            st.setString(9, objSo.getEntidad());
                            st.setString(10,objSo.getAreaTrabajo());
                            
	           if (st.execute()) //devuelve verdadero si fallo
            {
               throw new DAOException("Error creando solicitante ");
            }
            st.close();
            
        } catch (SQLException se) {
            throw new DAOException("Error añadiendo solicitante en DAO", se);
        }
        return true;
    }

    @Override
    public boolean crear(Solicitante objSo,int idPersona) throws DAOException {
       try 
	        {
	           CallableStatement st=con.prepareCall("{call sp_solicitante_n1(?,?,?,?)}");
	                   
	                    st.setInt(1,idPersona);
                                                    
                            st.setString(2, objSo.getTipoEntidad().name());
                            st.setString(3, objSo.getEntidad());
                            st.setString(4,objSo.getAreaTrabajo());
                            
	           if (st.execute()) //devuelve verdadero si fallo
            {
               throw new DAOException("Error creando solicitante ");
            }
            st.close();
            
        } catch (SQLException se) {
            throw new DAOException("Error añadiendo solicitante en DAO", se);
        }
        return true;
    }

    @Override
    public boolean modificar(Solicitante objSo) throws DAOException {
         try 
	        {
	           CallableStatement st=con.prepareCall("{call sp_solicitante_m(?,?,?,?,?,?,?,?,?,?,?)}");
                            st.setInt(1,objSo.getIdSolicitante());
	                    st.setString(2,objSo.getNombres());
                            st.setString(3,objSo.getApellidos());
                            st.setString(4,objSo.getDni());
                            st.setString(5,objSo.getSexo().name());
                            st.setString(6,objSo.getDireccion());
                            st.setString(7,objSo.getTelefono());
                            st.setString(8,objSo.getCorrero());
                            
                            st.setString(9, objSo.getTipoEntidad().name());
                            st.setString(10, objSo.getEntidad());
                            st.setString(11,objSo.getAreaTrabajo());
                            
                            
	           if (st.execute()) //devuelve verdadero si fallo
            {
               throw new DAOException("Error modificando solicitante ");
            }
            st.close();
            
        } catch (SQLException se) {
            throw new DAOException("Error modificando solicitante en DAO", se);
        }
        return true;
    }

    @Override
    public boolean eliminar(int idSolicitante) throws DAOException {
       try  {
	           CallableStatement st=con.prepareCall("{call sp_solicitante_e(?) }");
            
            st.setInt(1,idSolicitante);


            if (st.execute()) //devuelve verdadero si fallo
            {
                throw new DAOException("Error eliminando solicitante");
            }
            st.close();
            
        } catch (SQLException se) {
            throw new DAOException("Error eliminando  solicitante en DAO", se);
        }
        return true;  
    }

    @Override
    public Solicitante leerxid(int idSolicitante) throws DAOException {
         try{
        CallableStatement st=con.prepareCall("{call sp_solicitante_bco(?)}");
            st.setInt(1,idSolicitante);
              ResultSet rs = st.executeQuery();
            if (!rs.next()) {
                return null;
            }
           
            return (
                    new Solicitante(
                            rs.getInt("idSolicitante"),
                            TipoEntidad.valueOf(rs.getString("tipoEntidad")),
                            rs.getString("entidad"),
                            rs.getString("areaTrabajo"),
                            
                            rs.getString("nombres"),
                            rs.getString("apellidos"),
                            rs.getString("dni"),
                            Sexo.valueOf(rs.getString("sexo")),
                            rs.getString("direccion"),
                            rs.getString("telefono"),
                            rs.getString("correo"))
                            
                            
                   );
            
        } catch (SQLException se) {
            
            throw new DAOException("Error buscando Solicitante en DAO", se);
        }
    }

    @Override
    public Solicitante[] leertodo() throws DAOException {
        try  {
             CallableStatement stm=con.prepareCall("{call sp_solicitante_all()}");
            ResultSet rs=stm.executeQuery();
                      
            ArrayList<Solicitante> tribs = new ArrayList<>(); 
            
            while (rs.next()) {
                tribs.add(
                        
                 new Solicitante(
                            rs.getInt("idSolicitante"),
                            TipoEntidad.valueOf(rs.getString("tipoEntidad")),
                            rs.getString("entidad"),
                            rs.getString("areaTrabajo"),
                            
                            rs.getString("nombres"),
                            rs.getString("apellidos"),
                            rs.getString("dni"),
                            Sexo.valueOf(rs.getString("sexo")),
                            rs.getString("direccion"),
                            rs.getString("telefono"),
                            rs.getString("correo"))
                            
                            
                   );
            }
            return tribs.toArray(new Solicitante[0]);
        } catch (SQLException se) {
            
            throw new DAOException("Error obteniedo todos los solicitantes en DAO: " 
                    + se.getMessage(), se);
        }     
    }

   
    
}

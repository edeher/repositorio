/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;

import com.repositoriounia.modelo.Sexo;
import com.repositoriounia.modelo.Solicitante;
import com.repositoriounia.modelo.TemasSugeridos;
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
public class TemasSugeridosDAOJDBC implements TemasSugeridosDAO{
    private final Connection con;

    public TemasSugeridosDAOJDBC() {
        this.con = DBManager.getConnection();
    }
    
    @Override
    public boolean crear(TemasSugeridos objTe) throws DAOException {
       try 
	        {
	           CallableStatement st=con.prepareCall("{call sp_temasugerido_n(?,?,?,?,?,?,?,?,?,?,?,?)}");
	                   
	                    st.setString(1,objTe.getSolicitante().getNombres());
                            st.setString(2,objTe.getSolicitante().getApellidos());
                            st.setString(3,objTe.getSolicitante().getDni());
                            st.setString(4,objTe.getSolicitante().getSexo().name());
                            st.setString(5,objTe.getSolicitante().getDireccion());
                            st.setString(6,objTe.getSolicitante().getTelefono());
                            st.setString(7,objTe.getSolicitante().getCorrero());
                            st.setString(8,objTe.getSolicitante().getTipoEntidad().name());
                            st.setString(9,objTe.getSolicitante().getEntidad());
                            st.setString(10,objTe.getSolicitante().getAreaTrabajo());
                            
                            st.setString(11,objTe.getTema());
                            st.setString(12,objTe.getAreaTematica());
                            
	                   
	           if (st.execute()) //devuelve verdadero si fallo
            {
               throw new DAOException("Error creando temasugerido");
            }
            st.close();
            
            
        } catch (SQLException se) {
            throw new DAOException("Error añadiendo tema sugerido en DAO", se);
        }
        return true; 
    }

    @Override
    public boolean crear(TemasSugeridos objTe, int idSolicitante) throws DAOException {
         try 
	        {
	           CallableStatement st=con.prepareCall("{call sp_temasugerido_n1(?,?,?)}");
	                   
	                   st.setInt(1, idSolicitante);
                            
                            st.setString(2,objTe.getTema());
                            st.setString(3,objTe.getAreaTematica());
                            
	                   
	           if (st.execute()) //devuelve verdadero si fallo
            {
               throw new DAOException("Error creando temasugerido");
            }
            st.close();
            
            
        } catch (SQLException se) {
            throw new DAOException("Error añadiendo tema sugerido en DAO", se);
        }
        return true; 
    
    }

    @Override
    public boolean modificar(TemasSugeridos objTe) throws DAOException {
    try 
	        {
	           CallableStatement st=con.prepareCall("{call sp_temasugerido_m(?,?,?)}");
	                   
	                   st.setInt(1, objTe.getIdTemaSugerido());
                            
                            st.setString(2,objTe.getTema());
                            st.setString(3,objTe.getAreaTematica());
                            
	                   
	           if (st.execute()) //devuelve verdadero si fallo
            {
               throw new DAOException("Error modificando temasugerido");
            }
            st.close();
            
            
        } catch (SQLException se) {
            throw new DAOException("Error modificando tema sugerido en DAO", se);
        }
        return true;    
    }

    @Override
    public boolean eliminar(int idTemasSugeridos) throws DAOException {
        try  {
	           CallableStatement st=con.prepareCall("{call sp_temasugerido_e(?) }");
            
            st.setInt(1,idTemasSugeridos);


            if (st.execute()) //devuelve verdadero si fallo
            {
                throw new DAOException("Error eliminado TemasSugeridos");
            }
            st.close();
            
        } catch (SQLException se) {
            throw new DAOException("Error eliminando TemasSugeridos en DAO", se);
        }
        return true; 
    }

    @Override
    public TemasSugeridos leerxid(int idTemasSugeridos) throws DAOException {
        try{
        CallableStatement st=con.prepareCall("{call sp_temasugerido_bco(?)}");
            st.setInt(1,idTemasSugeridos);
              ResultSet rs = st.executeQuery();
            if (!rs.next()) {
                return null;
            }
           
            return (
                    new TemasSugeridos(
                            rs.getInt("idTemasSugeridos"),
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
                            rs.getString("correo")
                            ),
                           rs.getDate("fecha"),
                            rs.getString("tema"),
                            rs.getString("areaTematica"))
                            
                            
                   );
            
        } catch (SQLException se) {
            
            throw new DAOException("Error buscando TemasSugeridos en DAO", se);
        }
    }

    @Override
    public TemasSugeridos[] leertodo(int idSolicitante) throws DAOException {
         try{
        CallableStatement st=con.prepareCall("{call sp_temasugerido_all2(?)}");
            st.setInt(1,idSolicitante);
             ResultSet rs = st.executeQuery();
                      
            ArrayList<TemasSugeridos> tribs = new ArrayList<>(); 
            
            while (rs.next()) {
                tribs.add(
                        
                     new TemasSugeridos(
                            rs.getInt("idTemasSugeridos"),
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
                            rs.getString("correo")
                            ),
                           rs.getDate("fecha"),
                            rs.getString("tema"),
                            rs.getString("areaTematica"))
                            
                            
                   );
            }
            return tribs.toArray(new TemasSugeridos[0]);
        } catch (SQLException se) {
            
            throw new DAOException("Error obteniedo todos los TemasSugeridos en DAO: " 
                    + se.getMessage(), se);
        }    
    }

    @Override
    public TemasSugeridos[] leertodo() throws DAOException {
        try  {
             CallableStatement stm=con.prepareCall("{call sp_temasugerido_all()}");
            ResultSet rs=stm.executeQuery();
                      
            ArrayList<TemasSugeridos> tribs = new ArrayList<>(); 
            
            while (rs.next()) {
                tribs.add(
                        
                 new TemasSugeridos(
                            rs.getInt("idTemasSugeridos"),
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
                            rs.getString("correo")
                            ),
                           rs.getDate("fecha"),
                            rs.getString("tema"),
                            rs.getString("areaTematica"))
                            
                            
                   );
            }
            return tribs.toArray(new TemasSugeridos[0]);
        } catch (SQLException se) {
            
            throw new DAOException("Error obteniedo todos los TemasSugeridos en DAO: " 
                    + se.getMessage(), se);
        }     
    }

   
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;

import com.repositoriounia.modelo.AreaInvestigacion;
import com.repositoriounia.modelo.LineaInvestigacion;
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
public class LineaInvestigacionDAOJDBC implements LineaInvestigacionDAO{
    private final Connection con;

    public LineaInvestigacionDAOJDBC() {
        this.con = DBManager.getConnection();
    }

    @Override
    public boolean crear(LineaInvestigacion objLi) throws DAOException {
       
    try{
	           CallableStatement st=con.prepareCall("{call sp_lineainvestigacion_n(?,?)}");
	                   
	                    st.setInt(1,objLi.getAreaInvestigacion().getIdAreaInvestigacion());
                            st.setString(2,objLi.getDescripcion());
                                                      
	           if (st.execute()) 
            {
               throw new DAOException("Error creando linea de investigacion ");
            }
            st.close();
      }catch(SQLException se){
          throw new DAOException("eror añadiendo linea de investigcion dao",se);
      }
      return true;
    }

    @Override
    public boolean modificar(LineaInvestigacion objLi) throws DAOException {
     try{
	           CallableStatement st=con.prepareCall("{call sp_lineainvestigacion_m(?,?,?)}");
	                   
	                    st.setInt(1, objLi.getIdLineaInvestigacion());
                            st.setInt(2,objLi.getAreaInvestigacion().getIdAreaInvestigacion());
                            st.setString(3,objLi.getDescripcion());
                                                      
	           if (st.execute()) 
            {
               throw new DAOException("Error modificando linea de investigacion ");
            }
            st.close();
      }catch(SQLException se){
          throw new DAOException("eror modificando linea de investigcion dao",se);
      }
      return true;    
    }

    @Override
    public boolean eliminar(int idLineaInvestigacion) throws DAOException {
      try  {
	           CallableStatement st=con.prepareCall("{call sp_lineainvestigacion_e(?) }");
            
            st.setInt(1,idLineaInvestigacion);


            if (st.execute()) //devuelve verdadero si fallo
            {
                throw new DAOException("Error eliminando linea investigacion");
            }
            st.close();
            
        } catch (SQLException se) {
            throw new DAOException("Error eliminando  linea investigacion en DAO", se);
        }
        return true;
    }

    @Override
    public LineaInvestigacion leerxid(int idLineaInvestigacion) throws DAOException {
      try{
        CallableStatement st=con.prepareCall("{call sp_lineainvestigacion_bco(?)}");
            st.setInt(1,idLineaInvestigacion);
              ResultSet rs = st.executeQuery();
            if (!rs.next()) {
                return null;
            }
           
            return (
                    new LineaInvestigacion(
                            rs.getInt("idLineaInvestigacion"),
                           new AreaInvestigacion(
                           rs.getString("descripcion1")
                           ),
                            rs.getString("descripcion2"))
                         
                   );
            
        } catch (SQLException se) {
            
            throw new DAOException("Error buscando linea de investigacion en DAO", se);
        } 
    }

    @Override
    public LineaInvestigacion[] leertodo() throws DAOException {
        try  {
             CallableStatement stm=con.prepareCall("{call sp_lineainvestigacion_all()}");
            ResultSet rs=stm.executeQuery();
                      
            ArrayList<LineaInvestigacion> tribs = new ArrayList<>(); 
            
            while (rs.next()) {
                tribs.add(
                        
                new LineaInvestigacion(
                            rs.getInt("idLineaInvestigacion"),
                           new AreaInvestigacion(
                           rs.getString("descripcion1")
                           ),
                            rs.getString("descripcion2"))
                         
                   );
            }
            return tribs.toArray(new LineaInvestigacion[0]);
        } catch (SQLException se) {
            
            throw new DAOException("Error obteniedo todos las lineas de investigacion en DAO: " 
                    + se.getMessage(), se);
        }     
    }

   
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;

import com.repositoriounia.modelo.AreaInvestigacion;
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
public class AreaInvestigacionDAOJDBC implements AreaInvestigacionDAO{
private final Connection con;

    public AreaInvestigacionDAOJDBC() {
        this.con = DBManager.getConnection();
    }

    @Override
    public boolean crear(AreaInvestigacion objAr) throws DAOException {
       try 
	        {
	           CallableStatement st=con.prepareCall("{call sp_areainvestigacion_n(?)}");
	                   
	                    st.setString(1,objAr.getDescripcion());
                           
                           
                            
	                   
	           if (st.execute()) //devuelve verdadero si fallo
            {
               throw new DAOException("Error creando AreaInvestigacion ");
            }
            st.close();
            
            
        } catch (SQLException se) {
            throw new DAOException("Error añadiendo AreaInvestigacion  en DAO", se);
        }
        return true;
    
    }

    @Override
    public boolean modificar(AreaInvestigacion objAr) throws DAOException {
         try 
	        {
	           CallableStatement st=con.prepareCall("{call sp_areainvestigacion_m(?,?)}");
	                   
	           st.setInt(1,objAr.getIdAreaInvestigacion());
                   st.setString(2,objAr.getDescripcion());
                           
                          
	           if (st.execute()) //devuelve verdadero si fallo
            {
               throw new DAOException("Error modificndo AreaInvestigacion ");
            }
            st.close();
            
            
        } catch (SQLException se) {
            throw new DAOException("Error modificando AreaInvestigacion  en DAO", se);
        }
        return true;
    
    }

    @Override
    public boolean eliminar(int idAreaInvestigacion) throws DAOException {
        
    try  {
	           CallableStatement st=con.prepareCall("{call sp_areainvestigacion_e(?) }");
            
            st.setInt(1,idAreaInvestigacion);


            if (st.execute()) 
            {
                throw new DAOException("Error modificando AreaInvestigacion");
            }
            st.close();
            
        } catch (SQLException se) {
            throw new DAOException("Error añadiendo archivo AreaInvestigacion en DAO", se);
        }
        return true; 
    
    
    }

    @Override
    public AreaInvestigacion leerxid(int idAreaInvestigacion) throws DAOException {
       try{
        CallableStatement st=con.prepareCall("{call sp_areainvestigacion_bco(?)}");
            st.setInt(1,idAreaInvestigacion);
              ResultSet rs = st.executeQuery();
            if (!rs.next()) {
                return null;
            }
           
            return (
                    new AreaInvestigacion(
                            rs.getInt("idAreaInvestigacion"),
                           
                            rs.getString("descripcion"))
                   );
            
        } catch (SQLException se) {
            
            throw new DAOException("Error buscando AreaInvestigacion en DAO", se);
        }
          
    
    
    }

    @Override
    public AreaInvestigacion[] leertodo() throws DAOException {
          try  {
             CallableStatement stm=con.prepareCall("{call sp_areainvestigacion_all()}");
            ResultSet rs=stm.executeQuery();
                      
            ArrayList<AreaInvestigacion> tribs = new ArrayList<>(); 
            
            while (rs.next()) {
                tribs.add(
                        
                    new AreaInvestigacion(
                            rs.getInt("idAreaInvestigacion"),
                           
                            rs.getString("descripcion"))
                
                  );
            }
            return tribs.toArray(new AreaInvestigacion[0]);
        } catch (SQLException se) {
            
            throw new DAOException("Error obteniedo todos los areainvestigacion en DAO: " 
                    + se.getMessage(), se);
        }    
    
    
    }
    
}

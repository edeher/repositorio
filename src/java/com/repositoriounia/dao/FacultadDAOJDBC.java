/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;

import com.repositoriounia.modelo.Facultad;
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
public class FacultadDAOJDBC implements FacultadDAO{
private final Connection con;

    public FacultadDAOJDBC() {
        this.con = DBManager.getConnection();
    }

    @Override
    public boolean crear(Facultad objFa) throws DAOException {
         try{
	           CallableStatement st=con.prepareCall("{call sp_facultad_n(?)}");
	                   
	                   
                            st.setString(2,objFa.getDescripcion());
                                                      
	           if (st.execute()) //devuelve verdadero si fallo
            {
               throw new DAOException("Error creando facultad ");
            }
            st.close();
      }catch(SQLException se){
          throw new DAOException("eror añadiendo facultad dao",se);
      }
      return true;
    }

    @Override
    public boolean modificar(Facultad objFa) throws DAOException {
         try{
	           CallableStatement st=con.prepareCall("{call sp_facultad_m(?,?)}");
	                   
	                    st.setInt(1,objFa.getIdFacultad());
                            st.setString(2,objFa.getDescripcion());
                                                      
	           if (st.execute()) //devuelve verdadero si fallo
            {
               throw new DAOException("Error modificando facultad ");
            }
            st.close();
      }catch(SQLException se){
          throw new DAOException("eror modificando facultad dao",se);
      }
      return true;
    }

    @Override
    public boolean eliminar(int idFacultad) throws DAOException {
        try  {
	           CallableStatement st=con.prepareCall("{call sp_facultad_e(?) }");
            
            st.setInt(1,idFacultad);


            if (st.execute()) //devuelve verdadero si fallo
            {
                throw new DAOException("Error eliminando facultad");
            }
            st.close();
            
        } catch (SQLException se) {
            throw new DAOException("Error eliminando  facultad en DAO", se);
        }
        return true; 
    
    }

    @Override
    public Facultad leerxid(int idFacultad) throws DAOException {
         try{
        CallableStatement st=con.prepareCall("{call sp_facultad_bco(?)}");
            st.setInt(1,idFacultad);
              ResultSet rs = st.executeQuery();
            if (!rs.next()) {
                return null;
            }
           
            return (
                    new Facultad(
                            rs.getInt("idFacultad"),
                           
                            rs.getString("descripcion"))
                         
                   );
            
        } catch (SQLException se) {
            
            throw new DAOException("Error buscando facultad en DAO", se);
        }
    }

    @Override
    public Facultad[] leertodo() throws DAOException {
       try  {
             CallableStatement stm=con.prepareCall("{call sp_facultad_all()}");
            ResultSet rs=stm.executeQuery();
                      
            ArrayList<Facultad> tribs = new ArrayList<>(); 
            
            while (rs.next()) {
                tribs.add(
                        
                new Facultad(
                            rs.getInt("idFacultad"),
                           
                            rs.getString("descripcion"))
                         
                   );
            }
            return tribs.toArray(new Facultad[0]);
        } catch (SQLException se) {
            
            throw new DAOException("Error obteniedo todos las facultades en DAO: " 
                    + se.getMessage(), se);
        }     
    }
    
}

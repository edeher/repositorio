/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;

import com.repositoriounia.modelo.Escuela;
import com.repositoriounia.modelo.Estados;
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
public class EscuelaDAOJDBC implements EscuelaDAO{
private final Connection con;

    public EscuelaDAOJDBC() {
        this.con = DBManager.getConnection();
    }

    @Override
    public boolean crear(Escuela objEs) throws DAOException {
      try{
	           CallableStatement st=con.prepareCall("{call sp_escuela_n(?,?)}");
	                   
	                    st.setInt(1,objEs.getFacultad().getIdFacultad());
                            st.setString(2,objEs.getDescripcion());
                                                      
	           if (st.execute()) //devuelve verdadero si fallo
            {
               throw new DAOException("Error creando escuela ");
            }
            st.close();
      }catch(SQLException se){
          throw new DAOException("eror añadiendo escuela dao",se);
      }
      return true;
    }

    @Override
    public boolean modificar(Escuela objEs) throws DAOException {
       try{
	           CallableStatement st=con.prepareCall("{call sp_escuela_m(?,?,?)}");
                            st.setInt(1,objEs.getIdEscuela());
	                    st.setInt(2,objEs.getFacultad().getIdFacultad());
                            st.setString(3,objEs.getDescripcion());
                                                      
	           if (st.execute()) //devuelve verdadero si fallo
            {
               throw new DAOException("Error modificando escuela ");
            }
            st.close();
      }catch(SQLException se){
          throw new DAOException("eror modificando escuela dao",se);
      }
      return true;
    }

    @Override
    public boolean eliminar(int idEscuela) throws DAOException {
        try  {
	           CallableStatement st=con.prepareCall("{call sp_escuela_e(?) }");
            
            st.setInt(1,idEscuela);


            if (st.execute()) //devuelve verdadero si fallo
            {
                throw new DAOException("Error eliminando escuela");
            }
            st.close();
            
        } catch (SQLException se) {
            throw new DAOException("Error eliminando  escuela en DAO", se);
        }
        return true; 
    
    }

    @Override
    public Escuela leerxid(int idEscuela) throws DAOException {
         try{
        CallableStatement st=con.prepareCall("{call sp_escuela_bco(?)}");
            st.setInt(1,idEscuela);
              ResultSet rs = st.executeQuery();
            if (!rs.next()) {
                return null;
            }
           
            return (
                    new Escuela(
                            rs.getInt("idEscuela"),
                           new Facultad(
                            rs.getInt("idFacultad"),
                           
                            rs.getString("facultad")
                           ),
                            rs.getString("escuela"))
                         
                   );
            
        } catch (SQLException se) {
            
            throw new DAOException("Error buscando escuela en DAO", se);
        }
    }

    @Override
    public Escuela[] leertodo() throws DAOException {
          try  {
             CallableStatement stm=con.prepareCall("{call sp_escuela_all()}");
            ResultSet rs=stm.executeQuery();
                      
            ArrayList<Escuela> tribs = new ArrayList<>(); 
            
            while (rs.next()) {
                tribs.add(
                        
                 new Escuela(
                            rs.getInt("idEscuela"),
                           new Facultad(
                           rs.getString("facultad")
                           ),
                            rs.getString("escuela"))
                            
                   );
            }
            return tribs.toArray(new Escuela[0]);
        } catch (SQLException se) {
            
            throw new DAOException("Error obteniedo todos las escuelas en DAO: " 
                    + se.getMessage(), se);
        }     
    }

    @Override
    public Escuela[] leertodo(int idFacultad) throws DAOException {
          try{
        CallableStatement st=con.prepareCall("{call sp_escuelas_bcofa(?)}");
            st.setInt(1,idFacultad);
             ResultSet rs = st.executeQuery();
                      
            ArrayList<Escuela> tribs = new ArrayList<>(); 
            
            while (rs.next()) {
                tribs.add(
                        
                     new Escuela(
                            rs.getInt("idEscuela"),
                            new Facultad(
                            rs.getInt("idFacultad"),
                                    rs.getString("facultad"),
                                    Estados.valueOf( rs.getString("estado1"))
                            ),
                           
                            rs.getString("escuela"),
                            Estados.valueOf(rs.getString("estado2")))
                            
                            
                   );
            }
            return tribs.toArray(new Escuela[0]);
        } catch (SQLException se) {
            
            throw new DAOException("Error obteniedo todos las escuelas en DAO: " 
                    + se.getMessage(), se);
        }    
    }

   
}

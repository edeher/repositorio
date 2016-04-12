/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;

import com.repositoriounia.modelo.ArchivoPublicacion;
import com.repositoriounia.modelo.DescripcionArchivo;
import com.repositoriounia.modelo.Visita;
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
public class VisitaDAOJDBC implements VisitaDAO{
    private final Connection con;

    public VisitaDAOJDBC() {
        this.con = DBManager.getConnection();
    }
    

    @Override
    public boolean crear( int idArchivoPublicacion) throws DAOException {
      try{
	           CallableStatement st=con.prepareCall("{call sp_visita_n(?)}");
	                   
	                    st.setInt(1,idArchivoPublicacion);
                            
                                                      
	           if (st.execute()) 
            {
               throw new DAOException("Error creando visita ");
            }
            st.close();
      }catch(SQLException se){
          throw new DAOException("eror añadiendo visita dao",se);
      }
      return true;  
    }

    @Override
    public boolean modificar(Visita objVi) throws DAOException {
         try{
	           CallableStatement st=con.prepareCall("{call sp_visita_m(?,?)}");
	                   
	           st.setInt(1,objVi.getIdVisita());
                   st.setInt(2,objVi.getArchivoPublicacion().getIdArchivoPublicacion());
                            
                                                      
	           if (st.execute()) 
            {
               throw new DAOException("Error modificando visita ");
            }
            st.close();
      }catch(SQLException se){
          throw new DAOException("eror modificando visita dao",se);
      }
      return true;  
    }

    @Override
    public boolean eliminar(int idVisita) throws DAOException {
         try  {
	           CallableStatement st=con.prepareCall("{call sp_visita_e(?) }");
            
            st.setInt(1,idVisita);


            if (st.execute()) //devuelve verdadero si fallo
            {
                throw new DAOException("Error eliminando visita");
            }
            st.close();
            
        } catch (SQLException se) {
            throw new DAOException("Error eliminando  visita en DAO", se);
        }
        return true;
    }

    @Override
    public Visita leerxid(int idVisita) throws DAOException {
        try{
        CallableStatement st=con.prepareCall("{call sp_visita_bco(?)}");
            st.setInt(1,idVisita);
              ResultSet rs = st.executeQuery();
            if (!rs.next()) {
                return null;
            }
           
            return (
                    new Visita(
                            rs.getInt("idVisita"),
                           new ArchivoPublicacion(
                                   DescripcionArchivo.valueOf(rs.getString("descripcion"))),
                            rs.getDate("fecha"))
                         
                   );
            
        } catch (SQLException se) {
            
            throw new DAOException("Error buscando visita en DAO", se);
        } 
    }

    @Override
    public Visita[] leertodo() throws DAOException {
        try  {
             CallableStatement stm=con.prepareCall("{call sp_visita_all()}");
            ResultSet rs=stm.executeQuery();
                      
            ArrayList<Visita> tribs = new ArrayList<>(); 
            
            while (rs.next()) {
                tribs.add(
                        
                new Visita(
                            rs.getInt("idVisita"),
                           new ArchivoPublicacion(
                                   DescripcionArchivo.valueOf(rs.getString("descripcion"))),
                            rs.getDate("fecha"))
                         
                   );
            }
            return tribs.toArray(new Visita[0]);
        } catch (SQLException se) {
            
            throw new DAOException("Error obteniedo todos las visitas en DAO: " 
                    + se.getMessage(), se);
        }     
    }

   
}

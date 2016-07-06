/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;

import com.repositoriounia.modelo.ArchivoPublicacion;
import com.repositoriounia.modelo.AreaInvestigacion;
import com.repositoriounia.modelo.DescripcionArchivo;
import com.repositoriounia.modelo.LineaInvestigacion;
import com.repositoriounia.modelo.Publicacion;
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
                            rs.getInt("idArchivoPublicacion"),
                           
                           new Publicacion(
                                   rs.getInt("idPublicacion"),
                            new LineaInvestigacion(
                                    rs.getInt("idLineaInvestigacion"),
                                    new AreaInvestigacion(
                                    rs.getInt("idAreaInvestigacion"),
                                            rs.getString("area")
                                    ),
                                    rs.getString("linea")),
                            rs.getString("titulo"),
                            rs.getDate("fechaCarga"),
                            rs.getDate("fechaPublicacion")                      
                           ),
                             DescripcionArchivo.valueOf(rs.getString("descripcion")),
                            rs.getString("urlLocal"),
                            rs.getString("urlWeb"),null),
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
                            rs.getInt("idArchivoPublicacion"),
                           
                           new Publicacion(
                                   rs.getInt("idPublicacion"),
                            new LineaInvestigacion(
                                    rs.getInt("idLineaInvestigacion"),
                                    new AreaInvestigacion(
                                    rs.getInt("idAreaInvestigacion"),
                                            rs.getString("area")
                                    ),
                                    rs.getString("linea")),
                            rs.getString("titulo"),
                            rs.getDate("fechaCarga"),
                            rs.getDate("fechaPublicacion")                      
                           ),
                             DescripcionArchivo.valueOf(rs.getString("descripcion")),
                            rs.getString("urlLocal"),
                            rs.getString("urlWeb"),null),
                            rs.getDate("fecha"))
                         
                   );
            }
            return tribs.toArray(new Visita[0]);
        } catch (SQLException se) {
            
            throw new DAOException("Error obteniedo todos las visitas en DAO: " 
                    + se.getMessage(), se);
        }     
    }

    @Override
    public Visita[] top5() throws DAOException {
         try  {
             CallableStatement stm=con.prepareCall("{call sp_visitas_top_5_titulo()}");
            ResultSet rs=stm.executeQuery();
                      
            ArrayList<Visita> tribs = new ArrayList<>(); 
            
            while (rs.next()) {
                tribs.add(
                        
                new Visita(
                            
                          new ArchivoPublicacion(
                           
                           new Publicacion(
                                  
                            rs.getString("titulo")                      
                           )
                          ),
                            rs.getInt("cantidad")
                )
                         
                   );
            }
            return tribs.toArray(new Visita[0]);
        } catch (SQLException se) {
            
            throw new DAOException("Error obteniedo top 5 visitas en DAO: " 
                    + se.getMessage(), se);
        }     
    }

    @Override
    public Visita[] topxid(int idPublicacion) throws DAOException {
         try  {
             CallableStatement st=con.prepareCall("{call sp_visita_top5_xtipodearchivo(?)}");
            st.setInt(1,idPublicacion);
              ResultSet rs = st.executeQuery();
                      
            ArrayList<Visita> tribs = new ArrayList<>(); 
            
            while (rs.next()) {
                tribs.add(
                        
                    new Visita(
                            
                          new ArchivoPublicacion(
                           
                           
                                  
                           DescripcionArchivo.valueOf(rs.getString("descripcion"))                 
                           
                          ),
                            rs.getInt("cantidad")
                )
                
                  );
            }
            return tribs.toArray(new Visita[0]);
        } catch (SQLException se) {
            
            throw new DAOException("Error obteniedo todos los datos en DAO: " 
                    + se.getMessage(), se);
        }   
    }

    @Override
    public Visita[] top5_2() throws DAOException {
         try  {
             CallableStatement stm=con.prepareCall("{call sp_visitas_top_5_titulo2()}");
            ResultSet rs=stm.executeQuery();
                      
            ArrayList<Visita> tribs = new ArrayList<>(); 
            
            while (rs.next()) {
                tribs.add(
                        
                new Visita(
                            
                          new ArchivoPublicacion(
                           
                           new Publicacion(
                            rs.getInt("idPublicacion"),
                            rs.getString("titulo")                      
                           )
                          ),
                            rs.getInt("cantidad")
                )
                         
                   );
            }
            return tribs.toArray(new Visita[0]);
        } catch (SQLException se) {
            
            throw new DAOException("Error obteniedo top 5 visitas en DAO: " 
                    + se.getMessage(), se);
        }     
    }

    @Override
    public Visita top5xitem(int item) throws DAOException {
         try{
        CallableStatement st=con.prepareCall("{call sp_visitas_top_5_tituloxitem(?)}");
            st.setInt(1,item);
              ResultSet rs = st.executeQuery();
            if (!rs.next()) {
                return null;
            }
           
            return (
                     new Visita(
                            
                          new ArchivoPublicacion(
                           
                           new Publicacion(
                            rs.getInt("idPublicacion"),
                            rs.getString("titulo")                      
                           )
                          ),
                            rs.getInt("cantidad")
                )
                         
                   );
            
        } catch (SQLException se) {
            
            throw new DAOException("Error buscando visita en DAO", se);
        } 
    }

    @Override
    public Visita cantidad(String nombre) throws DAOException {
        try{
        CallableStatement st=con.prepareCall("{call sp_cantidad(?)}");
            st.setString(1,nombre);
              ResultSet rs = st.executeQuery();
            if (!rs.next()) {
                return null;
            }
           
            return (
                     new Visita(
                            
                         
                            rs.getInt("cantidad")
                )
                         
                   );
            
        } catch (SQLException se) {
            
            throw new DAOException("Error contando en DAO", se);
        } 
    }

    @Override
    public Visita cantidadPubli() throws DAOException {
        try{
        CallableStatement st=con.prepareCall("{call sp_publicaciones_nropublicaciones()}");
            
              ResultSet rs = st.executeQuery();
            if (!rs.next()) {
                return null;
            }
           
            return (
                     new Visita(
                            
                         
                            rs.getInt("cantidad")
                )
                         
                   );
            
        } catch (SQLException se) {
            
            throw new DAOException("Error buscando publicaciones en DAO", se);
        } 
    }

    @Override
    public Visita cantidadVisitas() throws DAOException {
        try{
        CallableStatement st=con.prepareCall("{call sp_visitas_nrovisitas()}");
            
              ResultSet rs = st.executeQuery();
            if (!rs.next()) {
                return null;
            }
           
            return (
                     new Visita(
                            
                         
                            rs.getInt("cantidad")
                )
                         
                   );
            
        } catch (SQLException se) {
            
            throw new DAOException("Error buscando publicaciones en DAO", se);
        } 
    
    }

    @Override
    public Visita cantidadtemasSolicitados() throws DAOException {
       try{
        CallableStatement st=con.prepareCall("{call sp_visitas_nrotemassugeridos()}");
            
              ResultSet rs = st.executeQuery();
            if (!rs.next()) {
                return null;
            }
           
            return (
                     new Visita(
                            
                         
                            rs.getInt("cantidad")
                )
                         
                   );
            
        } catch (SQLException se) {
            
            throw new DAOException("Error buscando publicaciones en DAO", se);
        } 
    }

    @Override
    public Visita cantidadarchivosSolictados() throws DAOException {
        try{
        CallableStatement st=con.prepareCall("{call sp_visitas_nrosolicitudes()}");
            
              ResultSet rs = st.executeQuery();
            if (!rs.next()) {
                return null;
            }
           
            return (
                     new Visita(
                            
                         
                            rs.getInt("cantidad")
                )
                         
                   );
            
        } catch (SQLException se) {
            
            throw new DAOException("Error buscando publicaciones en DAO", se);
        } 
    }

   @Override
    public Visita[] top5_ultimoxmes(int mes) throws DAOException {
        try  {
             CallableStatement stm=con.prepareCall("{call sp_visitas_top_5_XMES(?)}");
             stm.setInt(1,mes);
            ResultSet rs=stm.executeQuery();
                      
            ArrayList<Visita> tribs = new ArrayList<>(); 
            
            while (rs.next()) {
                tribs.add(
                        
                new Visita(
                            
                          new ArchivoPublicacion(
                           
                           new Publicacion(
                                  
                            rs.getString("titulo")                      
                           )
                          ),
                            rs.getInt("cantidad")
                )
                         
                   );
            }
            return tribs.toArray(new Visita[0]);
        } catch (SQLException se) {
            
            throw new DAOException("Error obteniedo top 5 visitas en DAO: " 
                    + se.getMessage(), se);
        }     
    }

    @Override
    public Visita[] top5_ultimoxmes2(int mes) throws DAOException {
        try  {
             CallableStatement stm=con.prepareCall("{call sp_visitas_top_5_XMES2(?)}");
             stm.setInt(1,mes);
            ResultSet rs=stm.executeQuery();
                      
            ArrayList<Visita> tribs = new ArrayList<>(); 
            
            while (rs.next()) {
                tribs.add(
                        
                new Visita(
                            
                          new ArchivoPublicacion(
                           
                           new Publicacion(
                            rs.getInt("idPublicacion"),
                            rs.getString("titulo")                      
                           )
                          ),
                            rs.getInt("cantidad")
                )
                         
                   );
            }
            return tribs.toArray(new Visita[0]);
        } catch (SQLException se) {
            
            throw new DAOException("Error obteniedo top 5 visitas en DAO: " 
                    + se.getMessage(), se);
        }     
    }

    @Override
    public Visita top5xitemxmes(int item,int mes) throws DAOException {
       try{
        CallableStatement st=con.prepareCall("{call sp_visitas_top_5_tituloxitemXMES(?,?)}");
            st.setInt(1,item);
             st.setInt(2,mes);
              ResultSet rs = st.executeQuery();
            if (!rs.next()) {
                return null;
            }
           
            return (
                     new Visita(
                            
                          new ArchivoPublicacion(
                           
                           new Publicacion(
                            rs.getInt("idPublicacion"),
                            rs.getString("titulo")                      
                           )
                          ),
                            rs.getInt("cantidad")
                )
                         
                   );
            
        } catch (SQLException se) {
            
            throw new DAOException("Error buscando visita en DAO", se);
        } 
    }

    @Override
    public Visita[] topxidxmes(int idPublicacion, int mes) throws DAOException {
       try  {
             CallableStatement st=con.prepareCall("{call sp_visita_top5_xtipodearchivoxmes(?,?)}");
            st.setInt(1,idPublicacion);
             st.setInt(2,mes);
              ResultSet rs = st.executeQuery();
                      
            ArrayList<Visita> tribs = new ArrayList<>(); 
            
            while (rs.next()) {
                tribs.add(
                        
                    new Visita(
                            
                          new ArchivoPublicacion(
                           
                           
                                  
                           DescripcionArchivo.valueOf(rs.getString("descripcion"))                 
                           
                          ),
                            rs.getInt("cantidad")
                )
                
                  );
            }
            return tribs.toArray(new Visita[0]);
        } catch (SQLException se) {
            
            throw new DAOException("Error obteniedo todos los datos en DAO: " 
                    + se.getMessage(), se);
        }   
    }

    @Override
    public Visita[] visitastotalesxAnio() throws DAOException {
       try  {
             CallableStatement stm=con.prepareCall("{call sp_visitas_total_anio_actual()}");
            ResultSet rs=stm.executeQuery();
                      
            ArrayList<Visita> tribs = new ArrayList<>(); 
            
            while (rs.next()) {
                tribs.add(
                        
                new Visita(
                            
                          new ArchivoPublicacion(
                           
                           new Publicacion(
                                  
                            rs.getString("titulo")                      
                           )
                          ),
                            rs.getInt("cantidad")
                )
                         
                   );
            }
            return tribs.toArray(new Visita[0]);
        } catch (SQLException se) {
            
            throw new DAOException("Error obteniedo top 5 visitas en DAO: " 
                    + se.getMessage(), se);
        }     
    }

    @Override
    public Visita[] publicacionestotalesxAnio() throws DAOException {
             try  {
             CallableStatement stm=con.prepareCall("{call sp_publicaciones_total_anio_actual()}");
            ResultSet rs=stm.executeQuery();
                      
            ArrayList<Visita> tribs = new ArrayList<>(); 
            
            while (rs.next()) {
                tribs.add(
                        
                new Visita(
                            
                          new ArchivoPublicacion(
                           
                           new Publicacion(
                                  
                            rs.getString("titulo")                      
                           )
                          ),
                            rs.getInt("cantidad")
                )
                         
                   );
            }
            return tribs.toArray(new Visita[0]);
        } catch (SQLException se) {
            
            throw new DAOException("Error obteniedo top 5 visitas en DAO: " 
                    + se.getMessage(), se);
        }     
    }

   
}

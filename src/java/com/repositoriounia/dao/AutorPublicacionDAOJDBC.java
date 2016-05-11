/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;

import com.repositoriounia.modelo.AreaInvestigacion;
import com.repositoriounia.modelo.Autor;
import com.repositoriounia.modelo.AutorPublicacion;
import com.repositoriounia.modelo.Escuela;
import com.repositoriounia.modelo.Facultad;
import com.repositoriounia.modelo.LineaInvestigacion;
import com.repositoriounia.modelo.Persona;
import com.repositoriounia.modelo.Publicacion;
import com.repositoriounia.modelo.Sexo;
import com.repositoriounia.modelo.TipoAutor;
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
public class AutorPublicacionDAOJDBC implements AutorPublicacionDAO{
    
    private final Connection con;

    public AutorPublicacionDAOJDBC() {
        this.con = DBManager.getConnection();
    }
    
    @Override
    public AutorPublicacion crearverileer(AutorPublicacion objAuP) throws DAOException {
        try  {
            CallableStatement st = con.prepareCall("{call sp_autorpublicacion_nbcon1(?,?,?,?,?,?,?,?,?,?,?,?,?)}");
                            st.setString(1,objAuP.getAutor().getNombres());
                            st.setString(2,objAuP.getAutor().getApellidos());
                            st.setString(3,objAuP.getAutor().getDni());
                            st.setString(4,objAuP.getAutor().getSexo().name());
                            st.setString(5,objAuP.getAutor().getDireccion());
                            st.setString(6,objAuP.getAutor().getTelefono());
                            st.setString(7,objAuP.getAutor().getCorrero());
                            st.setInt(8, objAuP.getAutor().getEscuela().getIdEscuela());
                            
                            st.setString(9,objAuP.getAutor().getProfesion());
                            st.setString(10,objAuP.getAutor().getEspecialidad());
                            st.setString(11,objAuP.getAutor().getGrado());
                            
                            
                            st.setInt(12,objAuP.getPublicacion().getIdPublicacion());
                            st.setString(13,objAuP.getTipoautor().name());
           
              ResultSet rs = st.executeQuery();
            if (!rs.next()) {
                return null;
            }
           
            return (
                     new AutorPublicacion(
                            rs.getInt("idAutorPublicacion"),
                             new Autor(
                                    rs.getInt("idAutor"),
                                    new Escuela(
                                    rs.getInt("idEscuela"),
                                    new Facultad(
                                            rs.getInt("idFacultad"),
                                            rs.getString("descripcion1")
                                    ),
                                    rs.getString("descripcion2")
                                                        ),
                            rs.getString("profesion"),
                            rs.getString("especialidad"),
                            rs.getString("grado"),
                            
                            rs.getString("nombres"),
                            rs.getString("apellidos"),
                            rs.getString("dni"),
                            Sexo.valueOf(rs.getString("sexo")),
                            rs.getString("direccion"),
                            rs.getString("telefono"),
                            rs.getString("correo")),
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
                            rs.getDate("fechaPublicacion")),
                            TipoAutor.valueOf(rs.getString("tipoAutor"))
                           
                     ));
        } catch (SQLException se) {
            
            throw new DAOException("Error buscando los autorpublicacion en DAO", se);
        }
    }

    @Override
    public AutorPublicacion crearverileer2(AutorPublicacion objAuP) throws DAOException {
        try{
         CallableStatement st=con.prepareCall("{call sp_autorpublicacion_nbcon(?,?,?)}");
	                   
	                    st.setInt(1,objAuP.getAutor().getIdAutor());
                            st.setInt(2,objAuP.getPublicacion().getIdPublicacion());
                            st.setString(3,objAuP.getTipoautor().name());
             ResultSet rs = st.executeQuery();
            if (!rs.next()) {
                return null;
            }
           
            return (
                        
                     new AutorPublicacion(
                            rs.getInt("idAutorPublicacion"),
                             new Autor(
                                    rs.getInt("idAutor"),
                                    new Escuela(
                                    rs.getInt("idEscuela"),
                                    new Facultad(
                                            rs.getInt("idFacultad"),
                                            rs.getString("descripcion1")
                                    ),
                                    rs.getString("descripcion2")
                                                        ),
                            rs.getString("profesion"),
                            rs.getString("especialidad"),
                            rs.getString("grado"),
                            
                            rs.getString("nombres"),
                            rs.getString("apellidos"),
                            rs.getString("dni"),
                            Sexo.valueOf(rs.getString("sexo")),
                            rs.getString("direccion"),
                            rs.getString("telefono"),
                            rs.getString("correo")),
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
                            rs.getDate("fechaPublicacion")),
                            TipoAutor.valueOf(rs.getString("tipoAutor"))
                           
                     ));
           } catch (SQLException se) {
            
            throw new DAOException("Error buscando los autorpublicacion en DAO", se);
        }
    }

    @Override
    public AutorPublicacion leerxid(int idAutorPublicacion) throws DAOException {
          try{
         CallableStatement st=con.prepareCall("{call sp_autorpublicacion_bco(?)}");
	                   
	                    st.setInt(1,idAutorPublicacion);
                           
             ResultSet rs = st.executeQuery();
            if (!rs.next()) {
                return null;
            }
           
            return (
                        
                     new AutorPublicacion(
                            rs.getInt("idAutorPublicacion"),
                             new Autor(
                                    rs.getInt("idAutor"),
                                    new Escuela(
                                    rs.getInt("idEscuela"),
                                    new Facultad(
                                            rs.getInt("idFacultad"),
                                            rs.getString("descripcion1")
                                    ),
                                    rs.getString("descripcion2")
                                                        ),
                            rs.getString("profesion"),
                            rs.getString("especialidad"),
                            rs.getString("grado"),
                            
                            rs.getString("nombres"),
                            rs.getString("apellidos"),
                            rs.getString("dni"),
                            Sexo.valueOf(rs.getString("sexo")),
                            rs.getString("direccion"),
                            rs.getString("telefono"),
                            rs.getString("correo")),
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
                            rs.getDate("fechaPublicacion")),
                            TipoAutor.valueOf(rs.getString("tipoAutor"))
                           
                     ));
           } catch (SQLException se) {
            
            throw new DAOException("Error buscando los autorpublicacion en DAO", se);
        }
    }

    @Override
    public AutorPublicacion[] leertodoporpublicacion(int idPublicacion) throws DAOException {
        try  {
            CallableStatement stm=con.prepareCall("{call sp_autorpublicacion_bco1(?)}");
            stm.setInt(1,idPublicacion);
            ResultSet rs=stm.executeQuery();
                      
            ArrayList<AutorPublicacion> tribs = new ArrayList<>(); 
            
            while (rs.next()) {
                tribs.add(
                        
                        
                        new AutorPublicacion(
                            rs.getInt("idAutorPublicacion"),
                             new Autor(
                                    rs.getInt("idAutor"),
                                    new Escuela(
                                    rs.getInt("idEscuela"),
                                    new Facultad(
                                            rs.getInt("idFacultad"),
                                            rs.getString("descripcion1")
                                    ),
                                    rs.getString("descripcion2")
                                                        ),
                            rs.getString("profesion"),
                            rs.getString("especialidad"),
                            rs.getString("grado"),
                            
                            rs.getString("nombres"),
                            rs.getString("apellidos"),
                            rs.getString("dni"),
                            Sexo.valueOf(rs.getString("sexo")),
                            rs.getString("direccion"),
                            rs.getString("telefono"),
                            rs.getString("correo")),
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
                            rs.getDate("fechaPublicacion")),
                            TipoAutor.valueOf(rs.getString("tipoAutor"))
                           
                     ));
            }
            return tribs.toArray(new AutorPublicacion[0]);
        } catch (SQLException se) {
            //se.printStackTrace();
            throw new DAOException("Error obteniedo todos los autorpublicacion en DAO: " 
                    + se.getMessage(), se);
        }   
    }

    @Override
    public AutorPublicacion[] leertodoporautor(int idAutor) throws DAOException {
         try  {
            CallableStatement stm=con.prepareCall("{call sp_autorpublicacion_bco2(?)}");
            stm.setInt(1,idAutor);
            ResultSet rs=stm.executeQuery();
                      
            ArrayList<AutorPublicacion> tribs = new ArrayList<>(); 
            
            while (rs.next()) {
                tribs.add(
                        
                        
                        new AutorPublicacion(
                            rs.getInt("idAutorPublicacion"),
                             new Autor(
                                    rs.getInt("idAutor"),
                                    new Escuela(
                                    rs.getInt("idEscuela"),
                                    new Facultad(
                                            rs.getInt("idFacultad"),
                                            rs.getString("descripcion1")
                                    ),
                                    rs.getString("descripcion2")
                                                        ),
                            rs.getString("profesion"),
                            rs.getString("especialidad"),
                            rs.getString("grado"),
                            
                            rs.getString("nombres"),
                            rs.getString("apellidos"),
                            rs.getString("dni"),
                            Sexo.valueOf(rs.getString("sexo")),
                            rs.getString("direccion"),
                            rs.getString("telefono"),
                            rs.getString("correo")),
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
                            rs.getDate("fechaPublicacion")),
                            TipoAutor.valueOf(rs.getString("tipoAutor"))
                           
                     ));
            }
            return tribs.toArray(new AutorPublicacion[0]);
        } catch (SQLException se) {
            //se.printStackTrace();
            throw new DAOException("Error obteniedo todos los autorpublicacion en DAO: " 
                    + se.getMessage(), se);
        }   
    }

    @Override
    public AutorPublicacion[] leertodo() throws DAOException {
        try  {
            CallableStatement stm=con.prepareCall("{call sp_autorpublicacion_all}");
            ResultSet rs=stm.executeQuery();
                      
            ArrayList<AutorPublicacion> tribs = new ArrayList<>(); 
            
            while (rs.next()) {
                tribs.add(
                        
                        
                        new AutorPublicacion(
                            rs.getInt("idAutorPublicacion"),
                             new Autor(
                                    rs.getInt("idAutor"),
                                    new Escuela(
                                    rs.getInt("idEscuela"),
                                    new Facultad(
                                            rs.getInt("idFacultad"),
                                            rs.getString("descripcion1")
                                    ),
                                    rs.getString("descripcion2")
                                                        ),
                            rs.getString("profesion"),
                            rs.getString("especialidad"),
                            rs.getString("grado"),
                            
                            rs.getString("nombres"),
                            rs.getString("apellidos"),
                            rs.getString("dni"),
                            Sexo.valueOf(rs.getString("sexo")),
                            rs.getString("direccion"),
                            rs.getString("telefono"),
                            rs.getString("correo")),
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
                            rs.getDate("fechaPublicacion")),
                            TipoAutor.valueOf(rs.getString("tipoAutor"))
                           
                     ));
            }
            return tribs.toArray(new AutorPublicacion[0]);
        } catch (SQLException se) {
            //se.printStackTrace();
            throw new DAOException("Error obteniedo todos los autorpublicacion en DAO: " 
                    + se.getMessage(), se);
        }   
    }

    @Override
    public AutorPublicacion leerxidPubliPrincipal(int idPublicacion) throws DAOException {
           try{
         CallableStatement st=con.prepareCall("{call sp_autorpublicacion_bco3(?)}");
	                   
	                    st.setInt(1,idPublicacion);
                           
             ResultSet rs = st.executeQuery();
            if (!rs.next()) {
                return null;
            }
           
            return (
                        
                     new AutorPublicacion(
                            rs.getInt("idAutorPublicacion"),
                             new Autor(
                                    rs.getInt("idAutor"),
                                    new Escuela(
                                    rs.getInt("idEscuela"),
                                    new Facultad(
                                            rs.getInt("idFacultad"),
                                            rs.getString("descripcion1")
                                    ),
                                    rs.getString("descripcion2")
                                                        ),
                            rs.getString("profesion"),
                            rs.getString("especialidad"),
                            rs.getString("grado"),
                            
                            rs.getString("nombres"),
                            rs.getString("apellidos"),
                            rs.getString("dni"),
                            Sexo.valueOf(rs.getString("sexo")),
                            rs.getString("direccion"),
                            rs.getString("telefono"),
                            rs.getString("correo")),
                             new Publicacion(  rs.getInt("idPublicacion"),
                            new LineaInvestigacion(
                                    rs.getInt("idLineaInvestigacion"),
                                    new AreaInvestigacion(
                                    rs.getInt("idAreaInvestigacion"),
                                            rs.getString("area")
                                    ),
                                    rs.getString("linea")),
                            rs.getString("titulo"),
                            rs.getDate("fechaCarga"),
                            rs.getDate("fechaPublicacion")),
                            TipoAutor.valueOf(rs.getString("tipoAutor"))
                           
                     ));
           } catch (SQLException se) {
            
            throw new DAOException("Error buscando los autorpublicacion en DAO", se);
        }
    }

    
}

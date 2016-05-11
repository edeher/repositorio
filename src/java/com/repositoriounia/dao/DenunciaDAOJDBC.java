/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;

import com.repositoriounia.modelo.ArchivoPublicacion;
import com.repositoriounia.modelo.AreaInvestigacion;
import com.repositoriounia.modelo.Denuncia;
import com.repositoriounia.modelo.Denunciante;
import com.repositoriounia.modelo.DescripcionArchivo;
import com.repositoriounia.modelo.LineaInvestigacion;
import com.repositoriounia.modelo.Publicacion;
import com.repositoriounia.modelo.Sexo;
import java.sql.Connection;
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
public class DenunciaDAOJDBC implements DenunciaDAO{
    private final Connection con;

    public DenunciaDAOJDBC() {
        this.con = DBManager.getConnection();
    }

    @Override
    public boolean crear(Denuncia objD) throws DAOException {
         try 
	        {
	           CallableStatement st=con.prepareCall("{call sp_denuncia_n(?,?,?,?,?,?,?,?,?)}");
	                   
	                    st.setString(1,objD.getDenunciante().getNombres());
                            st.setString(2,objD.getDenunciante().getApellidos());
                            st.setString(3,objD.getDenunciante().getDni());
                            st.setString(4,objD.getDenunciante().getSexo().name());
                            st.setString(5,objD.getDenunciante().getDireccion());
                            st.setString(6,objD.getDenunciante().getTelefono());
                            st.setString(7,objD.getDenunciante().getCorrero());
                            
                            st.setInt(8, objD.getArchivoPublicacion().getIdArchivoPublicacion());
                            
                            st.setString(9, objD.getDescripcion());
                           
                       
	           if (st.execute()) //devuelve verdadero si fallo
            {
               throw new DAOException("Error creando denuncia ");
            }
            st.close();
            
        } catch (SQLException se) {
            throw new DAOException("Error añadiendo denuncia en DAO", se);
        }
        return true;
    
    }

    @Override
    public boolean crear(Denuncia objD, int idDenunciante) throws DAOException {
        
     try 
	        {
	           CallableStatement st=con.prepareCall("{call sp_denuncia_n1(?,?,?)}");
	                   
	                    st.setInt(1, idDenunciante);
                            
                            st.setInt(2, objD.getArchivoPublicacion().getIdArchivoPublicacion());
                            
                            st.setString(3, objD.getDescripcion());
                           
                       
	           if (st.execute()) //devuelve verdadero si fallo
            {
               throw new DAOException("Error creando denuncia ");
            }
            st.close();
            
        } catch (SQLException se) {
            throw new DAOException("Error añadiendo denuncia en DAO", se);
        }
        return true;
    
    }

    @Override
    public boolean modificar(Denuncia objD) throws DAOException {
       try 
	        {
	           CallableStatement st=con.prepareCall("{call sp_denuncia_m(?,?)}");
	                   
	                    st.setInt(1, objD.getIdDenuncia());
                            
                            st.setString(2, objD.getDescripcion());
                           
                       
	           if (st.execute()) //devuelve verdadero si fallo
            {
               throw new DAOException("Error modificando denuncia ");
            }
            st.close();
            
        } catch (SQLException se) {
            throw new DAOException("Error modificando denuncia en DAO", se);
        }
        return true;
    
    }

    @Override
    public boolean eliminar(Denuncia objD) throws DAOException {
        try 
	        {
	           CallableStatement st=con.prepareCall("{call sp_denuncia_mEstado(?)}");
	                   
	                    st.setInt(1, objD.getIdDenuncia());
                                                       
                       
	           if (st.execute()) //devuelve verdadero si fallo
            {
               throw new DAOException("Error eliminado denuncia ");
            }
            st.close();
            
        } catch (SQLException se) {
            throw new DAOException("Error eliminando denuncia en DAO", se);
        }
        return true;
    
    }

    @Override
    public Denuncia leerxid(int idDenuncia) throws DAOException {
       try{
        CallableStatement st=con.prepareCall("{call sp_denuncia_bco(?)}");
            st.setInt(1,idDenuncia);
              ResultSet rs = st.executeQuery();
            if (!rs.next()) {
                return null;
            }
           
            return (
                      new Denuncia(
                            rs.getInt("idDenuncia"),
                            new Denunciante(
                                rs.getInt("idDenunciante"),

                                rs.getString("nombres"),
                                rs.getString("apellidos"),
                                rs.getString("dni"),
                                Sexo.valueOf(rs.getString("sexo")),
                                rs.getString("direccion"),
                                rs.getString("telefono"),
                                rs.getString("correo")),
                            new ArchivoPublicacion(
                                rs.getInt("idArchivoPublicacion"),
                                new Publicacion(
                                    rs.getInt("idPublicacion"),
                                    new LineaInvestigacion(
                                        rs.getInt("idLineaInvestigacion"),
                                        new AreaInvestigacion(
                                            rs.getInt("idAreaInvestigacion"),
                                            rs.getString("area")),
                                        rs.getString("linea")),
                                    rs.getString("titulo"),
                                    rs.getDate("fechaCarga"),
                                    rs.getDate("fechaPublicacion")),
                                DescripcionArchivo.valueOf(rs.getString("descripcion1")),
                                rs.getString("urlLocal"),
                                rs.getString("urlWeb")),
                            rs.getDate("fecha"),
                            rs.getString("descripcion2"))
                     );
            
        } catch (SQLException se) {
            
            throw new DAOException("Error buscando denuncia en DAO", se);
        }
         
    }

    @Override
    public Denuncia[] leertodo() throws DAOException {
      try  {
             CallableStatement stm=con.prepareCall("{call sp_denuncia_all()}");
            ResultSet rs=stm.executeQuery();
                      
            ArrayList<Denuncia> tribs = new ArrayList<>(); 
            
            while (rs.next()) {
                tribs.add(
                        
                    new Denuncia(
                            rs.getInt("idDenuncia"),
                            new Denunciante(
                                rs.getInt("idDenunciante"),

                                rs.getString("nombres"),
                                rs.getString("apellidos"),
                                rs.getString("dni"),
                                Sexo.valueOf(rs.getString("sexo")),
                                rs.getString("direccion"),
                                rs.getString("telefono"),
                                rs.getString("correo")),
                            new ArchivoPublicacion(
                                rs.getInt("idArchivoPublicacion"),
                                new Publicacion(
                                    rs.getInt("idPublicacion"),
                                    new LineaInvestigacion(
                                        rs.getInt("idLineaInvestigacion"),
                                        new AreaInvestigacion(
                                            rs.getInt("idAreaInvestigacion"),
                                            rs.getString("area")),
                                        rs.getString("linea")),
                                    rs.getString("titulo"),
                                    rs.getDate("fechaCarga"),
                                    rs.getDate("fechaPublicacion")),
                                DescripcionArchivo.valueOf(rs.getString("descripcion1")),
                                rs.getString("urlLocal"),
                                rs.getString("urlWeb")),
                            rs.getDate("fecha"),
                            rs.getString("descripcion2"))
                     );
            }
            return tribs.toArray(new Denuncia[0]);
        } catch (SQLException se) {
            
            throw new DAOException("Error obteniedo todos las denuncias en DAO: " 
                    + se.getMessage(), se);
        }   
    
    
    }

}

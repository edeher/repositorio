/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;

import com.repositoriounia.modelo.ArchivoPublicacion;
import java.io.InputStream;

/**
 *
 * @author Mi Laptop
 */
public interface ArchivoPublicacionDAO {
     public boolean crear( ArchivoPublicacion objarchP) throws DAOException;//asocia la excepcion para usar las ecepciones
    public boolean modificar(ArchivoPublicacion objarchP,int idPublicacion)throws DAOException;
    public boolean eliminar(int idArchivoPublicacion)throws DAOException;
    public ArchivoPublicacion crearleer(ArchivoPublicacion objArchip)throws DAOException;
    public ArchivoPublicacion leerxid(int idArchivoPublicacion)throws DAOException;
    public ArchivoPublicacion[] leertodoidpublicacion(int idPublicacion)throws DAOException;
    public ArchivoPublicacion[] leertodo()throws DAOException;
    public InputStream ArchivoPublico(int idArchivoPublicacion)throws DAOException;
}

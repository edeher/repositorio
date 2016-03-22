/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;

import com.repositoriounia.modelo.ArchivoPublicacion;

/**
 *
 * @author Mi Laptop
 */
public interface ArchivoPublicacionDAO {
     public boolean crear( ArchivoPublicacion objarchP, int idPublicacion) throws DAOException;//asocia la excepcion para usar las ecepciones
    public boolean modificar(ArchivoPublicacion objarchP,int idPublicacion)throws DAOException;
    public boolean eliminar(int idArchivoPublicacion)throws DAOException;
    public ArchivoPublicacion leerxid(int idArchivoPublicacion)throws DAOException;
    public ArchivoPublicacion[] leertodo(int idPublicacion)throws DAOException;
    public ArchivoPublicacion[] leertodo()throws DAOException;
}

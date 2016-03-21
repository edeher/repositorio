/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;

/**
 *
 * @author Mi Laptop
 */
public interface ArchivoPublicacionDAO {
     public boolean crear( ArchivoPublicacionDAO objarchP, int idPublicacion) throws DAOException;//asocia la excepcion para usar las ecepciones
    public boolean modificar(ArchivoPublicacionDAO objarchP,int idPublicacion)throws DAOException;
    public boolean eliminar(int idArchivoPublicacionDAO)throws DAOException;
    public ArchivoPublicacionDAO leerxid(int idArchivoPublicacionDAO)throws DAOException;
    public ArchivoPublicacionDAO[] leertodo(int idPublicacion)throws DAOException;
    public ArchivoPublicacionDAO[] leertodo()throws DAOException;
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;

import com.repositoriounia.modelo.Archivo;

/**
 *
 * @author Mi Laptop
 */
public interface ArchivoDAO {
     public boolean crear( Archivo objarch) throws DAOException;//asocia la excepcion para usar las ecepciones
    public boolean modificar(Archivo objarch)throws DAOException;
    public boolean eliminar(int idArchivo)throws DAOException;
    public Archivo leerxid(int idArchivo)throws DAOException;
    public Archivo[] leertodo()throws DAOException;
}

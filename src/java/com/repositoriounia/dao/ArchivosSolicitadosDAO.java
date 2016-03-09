/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;

import com.repositoriounia.modelo.ArchivosSolicitados;

/**
 *
 * @author Mi Laptop
 */
public interface ArchivosSolicitadosDAO {
     public boolean crear( ArchivosSolicitados objarchS) throws DAOException;//asocia la excepcion para usar las ecepciones
    public boolean modificar(ArchivosSolicitados objarchS)throws DAOException;
    public boolean eliminar(int idArchivoSolicitado)throws DAOException;
    public ArchivosSolicitados leerxid(int idArchivoSolicitado)throws DAOException;
    public ArchivosSolicitados[] leertodo()throws DAOException;
}

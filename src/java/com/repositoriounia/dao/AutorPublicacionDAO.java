/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;

import com.repositoriounia.modelo.AutorPublicacion;

/**
 *
 * @author Mi Laptop
 */
public interface AutorPublicacionDAO {
     public boolean crear( AutorPublicacion objAuP) throws DAOException;//asocia la excepcion para usar las ecepciones
    public boolean modificar(AutorPublicacion objAuP)throws DAOException;
    public boolean eliminar(int idAutorPublicacion)throws DAOException;
    public AutorPublicacion leerxid (int idAutorPublicacion)throws DAOException;
    public AutorPublicacion[] leertodo()throws DAOException;
}

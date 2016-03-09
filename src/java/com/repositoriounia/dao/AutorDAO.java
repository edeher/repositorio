/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;

import com.repositoriounia.modelo.Autor;

/**
 *
 * @author Mi Laptop
 */
public interface AutorDAO {
     public boolean crear( Autor objAu) throws DAOException;//asocia la excepcion para usar las ecepciones
    public boolean modificar(Autor objAu)throws DAOException;
    public boolean eliminar(int idAutor)throws DAOException;
    public Autor leerxid (int idAutor)throws DAOException;
    public Autor[] leertodo()throws DAOException;
}

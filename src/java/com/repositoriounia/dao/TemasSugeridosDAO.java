/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;

import com.repositoriounia.modelo.TemasSugeridos;

/**
 *
 * @author Mi Laptop
 */
public interface TemasSugeridosDAO {
    public boolean crear( TemasSugeridos objTe) throws DAOException;//asocia la excepcion para usar las ecepciones
    public boolean modificar(TemasSugeridos objTe)throws DAOException;
    public boolean eliminar(int idTemasSugeridos)throws DAOException;
    public TemasSugeridos leerxid (int idTemasSugeridos)throws DAOException;
    public TemasSugeridos[] leertodo()throws DAOException;
}

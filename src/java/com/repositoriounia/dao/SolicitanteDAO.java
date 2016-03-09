/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;

import com.repositoriounia.modelo.Solicitante;

/**
 *
 * @author Mi Laptop
 */
public interface SolicitanteDAO {
     public boolean crear( Solicitante objSo) throws DAOException;//asocia la excepcion para usar las ecepciones
    public boolean modificar(Solicitante objSo)throws DAOException;
    public boolean eliminar(int idSolicitante)throws DAOException;
    public Solicitante leerxid (int idSolicitante)throws DAOException;
    public Solicitante[] leertodo()throws DAOException;
}

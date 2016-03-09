/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;

import com.repositoriounia.modelo.Denunciante;

/**
 *
 * @author Mi Laptop
 */
public interface DenuncianteDAO {
     public boolean crear( Denunciante objDe) throws DAOException;//asocia la excepcion para usar las ecepciones
    public boolean modificar(Denunciante objDe)throws DAOException;
    public boolean eliminar(int idDenunciante)throws DAOException;
    public Denunciante leerxid (int idDenunciante)throws DAOException;
    public Denunciante[] leertodo()throws DAOException;
}

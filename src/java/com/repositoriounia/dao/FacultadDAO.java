/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;

import com.repositoriounia.modelo.Facultad;

/**
 *
 * @author Mi Laptop
 */
public interface FacultadDAO {
     public boolean crear( Facultad objFa) throws DAOException;//asocia la excepcion para usar las ecepciones
    public boolean modificar(Facultad objFa)throws DAOException;
    public boolean eliminar(int idFacultad)throws DAOException;
    public Facultad leerxid (int idFacultad)throws DAOException;
    public Facultad[] leertodo()throws DAOException;
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;

import com.repositoriounia.modelo.Escuela;

/**
 *
 * @author Mi Laptop
 */
public interface EscuelaDAO {
    public boolean crear( Escuela objEs) throws DAOException;//asocia la excepcion para usar las ecepciones
    public boolean modificar(Escuela objEs)throws DAOException;
    public boolean eliminar(int idEscuela)throws DAOException;
    public Escuela leerxid (int idEscuela)throws DAOException;
    public Escuela[] leertodo()throws DAOException;
    public Escuela[] leertodo(int idFacultad)throws DAOException;
}

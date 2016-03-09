/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;

import com.repositoriounia.modelo.Persona;

/**
 *
 * @author Mi Laptop
 */
public interface PersonaDAO {
     public boolean crear( Persona objLi) throws DAOException;//asocia la excepcion para usar las ecepciones
    public boolean modificar(Persona objLi)throws DAOException;
    public boolean eliminar(int idPersona)throws DAOException;
    public Persona leerxid (int idPersona)throws DAOException;
    public Persona[] leertodo()throws DAOException;
}

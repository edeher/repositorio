/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;

import com.repositoriounia.modelo.Visita;

/**
 *
 * @author Mi Laptop
 */
public interface VisitaDAO {
     public boolean crear( int idArchivoPublicacion) throws DAOException;//asocia la excepcion para usar las ecepciones
    public boolean modificar(Visita objVi)throws DAOException;
    public boolean eliminar(int idVisita)throws DAOException;
    public Visita leerxid (int idVisita)throws DAOException;
    public Visita[] leertodo()throws DAOException;
}

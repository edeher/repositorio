/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;

import com.repositoriounia.modelo.LineaInvestigacion;

/**
 *
 * @author Mi Laptop
 */
public interface LineaInvestigacionDAO {
    public boolean crear( LineaInvestigacion objLi) throws DAOException;//asocia la excepcion para usar las ecepciones
    public boolean modificar(LineaInvestigacion objLi)throws DAOException;
    public boolean eliminar(int idLineaInvestigacion)throws DAOException;
    public LineaInvestigacion leerxid (int idLineaInvestigacion)throws DAOException;
    public LineaInvestigacion[] leertodo()throws DAOException;
}

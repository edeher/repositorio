/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;

import com.repositoriounia.modelo.AreaInvestigacion;

/**
 *
 * @author Mi Laptop
 */
public interface AreaInvestigacionDAO {
     public boolean crear( AreaInvestigacion objAr) throws DAOException;//asocia la excepcion para usar las ecepciones
    public boolean modificar(AreaInvestigacion objAr)throws DAOException;
    public boolean eliminar(int idAreaInvestigacion)throws DAOException;
    public AreaInvestigacion leerxid(int idAreaInvestigacion)throws DAOException;
    public AreaInvestigacion[] leertodo()throws DAOException;
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;

import com.repositoriounia.modelo.Publicacion;

/**
 *
 * @author Mi Laptop
 */
public interface PublicacionDAO {
    public boolean crear( Publicacion objPu, int idLineaInvestigacion) throws DAOException;//asocia la excepcion para usar las ecepciones
    public boolean modificar(Publicacion objPu,int idLineaInvestigacion)throws DAOException;
    public boolean eliminar(int idPublicacion)throws DAOException;
    public Publicacion leerxid (int idPublicacion)throws DAOException;
    public Publicacion[] leertodo()throws DAOException;
}

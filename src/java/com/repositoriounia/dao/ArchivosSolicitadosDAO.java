/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;

import com.repositoriounia.modelo.ArchivosSolicitados;
import com.repositoriounia.modelo.Solicitante;

/**
 *
 * @author Mi Laptop
 */
public interface ArchivosSolicitadosDAO {
     public boolean crear( int idSolicitante, int idArchivoPublicacion) throws DAOException;//asocia la excepcion para usar las ecepciones
    public boolean crear( Solicitante objsolici,int idArchivoPublicacion) throws DAOException;
     public boolean modificar(ArchivosSolicitados objarchS,int idSolicitante, int idArchivoPublicacion)throws DAOException;
    public boolean eliminar(int idArchivoSolicitado)throws DAOException;
    public ArchivosSolicitados crearleer(ArchivosSolicitados objarchS)throws DAOException;
    public ArchivosSolicitados leerxid(int idArchivoSolicitado)throws DAOException;
    public ArchivosSolicitados[] leertodoxidsolicitante(int idSolicitante)throws DAOException;
    public ArchivosSolicitados[] leertodoxidarchivopublicacion( int idArchivoPublicacion)throws DAOException;
    public ArchivosSolicitados[] leertodo()throws DAOException;
    
}

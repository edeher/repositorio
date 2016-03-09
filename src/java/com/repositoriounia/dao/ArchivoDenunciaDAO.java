/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;

import com.repositoriounia.modelo.ArchivoDenuncia;

/**
 *
 * @author Mi Laptop
 */
public interface ArchivoDenunciaDAO {
     public boolean crear( ArchivoDenuncia objarchD) throws DAOException;//asocia la excepcion para usar las ecepciones
    public boolean modificar(ArchivoDenuncia objarchD)throws DAOException;
    public boolean eliminar(int idArchivoDenuncia)throws DAOException;
    public ArchivoDenuncia leerxid(int idArchivoDenuncia)throws DAOException;
    public ArchivoDenuncia[] leertodo()throws DAOException;
}

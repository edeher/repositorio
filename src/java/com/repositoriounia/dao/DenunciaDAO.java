/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;

import com.repositoriounia.modelo.Denuncia;

/**
 *
 * @author Mi Laptop
 */
public interface DenunciaDAO {
     public boolean crear( Denuncia objD) throws DAOException;//asocia la excepcion para usar las ecepciones
    public boolean modificar(Denuncia objD)throws DAOException;
    public boolean eliminar(int idDenuncia)throws DAOException;
    public Denuncia leerxid (int idDenuncia)throws DAOException;
    public Denuncia[] leertodo()throws DAOException;
}

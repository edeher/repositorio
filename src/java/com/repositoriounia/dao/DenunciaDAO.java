/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;

import com.repositoriounia.modelo.Denuncia;
import com.repositoriounia.modelo.Denunciante;

/**
 *
 * @author Mi Laptop
 */
public interface DenunciaDAO {
     public boolean crear( Denuncia objD, Denunciante objDente, int idArchivoPublicacion) throws DAOException;//asocia la excepcion para usar las ecepciones
    public boolean crear( Denuncia objD, int idDenunciante,int idArchivoPublicacion) throws DAOException;
    
     public boolean modificar(Denuncia objD)throws DAOException;
    public boolean eliminar(Denuncia objD)throws DAOException;
    public Denuncia leerxid (int idDenuncia)throws DAOException;
    public Denuncia[] leertodo()throws DAOException;
}

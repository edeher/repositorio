/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;

import com.repositoriounia.modelo.Autor;
import com.repositoriounia.modelo.AutorPublicacion;
import com.repositoriounia.modelo.Publicacion;

/**
 *
 * @author Mi Laptop
 */
public interface AutorPublicacionDAO {
    
    public AutorPublicacion crearverileer(AutorPublicacion objAuP)throws DAOException;
    public AutorPublicacion crearverileer2(AutorPublicacion objAuP)throws DAOException;
//    public boolean modificar(AutorPublicacion objAuP,Autor objAu, Publicacion objPu)throws DAOException;
//    public boolean eliminar(int idAutorPublicacion)throws DAOException;
public AutorPublicacion leerxid (int idAutorPublicacion)throws DAOException;
public AutorPublicacion leerxidPubliPrincipal (int idPublicacion)throws DAOException;
public AutorPublicacion leerxidAuPuyidPu (int idAutorPublicacion,int idPublicacion)throws DAOException;
public boolean eliminar(int idAutorPublicacion)throws DAOException;
   public AutorPublicacion[] leertodoporpublicacion(int idPublicacion)throws DAOException;
   public AutorPublicacion[] leertodoporautor(int idAutor)throws DAOException;
   public AutorPublicacion[] leertodoportipo(AutorPublicacion objAuP)throws DAOException;
   public AutorPublicacion[] leertodo()throws DAOException;
}

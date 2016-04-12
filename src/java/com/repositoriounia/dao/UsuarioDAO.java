/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;

import com.repositoriounia.modelo.Usuario;

/**
 *
 * @author Mi Laptop
 */
public interface UsuarioDAO {
    public boolean crear(Usuario objUs)throws DAOException;
    public boolean crear(Usuario objUs,int idPersona)throws DAOException;
    public boolean modificar(Usuario objUs)throws DAOException;
    public boolean modificar(Usuario objUs,int idUsuario)throws DAOException;
    public boolean eliminar (int idUsuario) throws DAOException;
    public Usuario leerxid(int idUsuario)throws DAOException;
    public Usuario [] leertodo() throws DAOException;
            
            
    
}

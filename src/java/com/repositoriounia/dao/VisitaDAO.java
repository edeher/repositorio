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
    public Visita top5xitem (int item)throws DAOException;
    public Visita[] leertodo()throws DAOException;
    public Visita[]top5()throws DAOException;
     public Visita[]top5_2()throws DAOException;
    public Visita[] topxid(int idPublicacion)throws DAOException;
    public Visita cantidad(String nombre)throws DAOException;
     public Visita cantidadPubli()throws DAOException;
     public Visita cantidadVisitas()throws DAOException;
     public Visita cantidadtemasSolicitados()throws DAOException;
     public Visita cantidadarchivosSolictados()throws DAOException;
     
}

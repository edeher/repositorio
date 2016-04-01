/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.test;

import com.repositoriounia.dao.DAOException;
import com.repositoriounia.dao.EscuelaDAO;
import com.repositoriounia.dao.EscuelaDAOFactory;
import com.repositoriounia.modelo.Escuela;

/**
 *
 * @author Mi Laptop
 */
public class EscuelaTest {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws DAOException{
        // TODO code application logic here
        crearescuela();
    }
     public static void crearescuela() throws DAOException
    {
        EscuelaDAOFactory fabricate= new  EscuelaDAOFactory();
         EscuelaDAO daote= fabricate.metodoDAO();
         Escuela objEs=new Escuela();
          int idFacultad=1;
             objEs.setDescripcion("acuicola");
              
              daote.crear(objEs,idFacultad);
               
           
    }
}

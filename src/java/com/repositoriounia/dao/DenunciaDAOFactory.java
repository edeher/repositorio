/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.dao;

/**
 *
 * @author Mi Laptop
 */
public class DenunciaDAOFactory {
     public DenunciaDAO metodoDAO()
   {
    return new DenunciaDAOJDBC();
   }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.modelo;

/**
 *
 * @author Mi Laptop
 */
public enum TipoEntidad {
    SERVICIOS("Servicios"),
    MANUFACTURERA("Manufacturera"),
    COMERCIALIZADORA("comercializadora"),
    EDUCACIONAL("Educacional");
    
    private String nom;

    /**
     * @return the nom
     */
    public String getNom() {
        return nom;
    }

    /**
     * @param nom the nom to set
     */
    public void setNom(String nom) {
        this.nom = nom;
    }

    private TipoEntidad(String nom) {
        this.nom = nom;
    }
    
        
}

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
public enum DescripcionArchivo {
    TE("Tesis"),
    PTE("Proyecto de Tesis"),
    PIN("Proyecto de Investigacion"),
    INPIN("Informe Final de Proyecto"),
    ARCI("Articulo Cientifico");
    
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

    private DescripcionArchivo(String nom) {
        this.nom = nom;
    }
    
    
}

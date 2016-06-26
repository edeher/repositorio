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
public enum DescripDenun {
    PLAGIO("Es copia de otro Trabajo"),
    AUTORIA("No es el unico Autor"),
    PLAGIOPART("Contiene Partes de otro Proyecto");
    
    private String nom;

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    private DescripDenun(String nom) {
        this.nom = nom;
    }
    
}

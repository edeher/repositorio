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
public class Denunciante extends Persona{
    private int idDenunciante;

    public Denunciante(int idDenunciante, String nombres, String apellidos, String dni, Sexo sexo, String direccion, String telefono, String correro) {
        super(nombres, apellidos, dni, sexo, direccion, telefono, correro);
        this.idDenunciante = idDenunciante;
    }
    
    
    

    /**
     * @return the idDenunciante
     */
    public int getIdDenunciante() {
        return idDenunciante;
    }

    /**
     * @param idDenunciante the idDenunciante to set
     */
    public void setIdDenunciante(int idDenunciante) {
        this.idDenunciante = idDenunciante;
    }

    @Override
    public String toString() {
        return "Denunciante{" + "idDenunciante=" + idDenunciante + ", nombres=" + nombres + ", apellidos=" + apellidos + ", dni=" + dni + ", sexo=" + sexo + ", direccion=" + direccion + ", telefono=" + telefono + ", correro=" + correro + ", estado=" + estado + '}';
   
    }
   

    
}

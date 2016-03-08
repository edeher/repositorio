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
public class Denunciante {
    private int idDenunciante;
    private Persona persona;
    private Estados estado;

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

    /**
     * @return the persona
     */
    public Persona getPersona() {
        return persona;
    }

    /**
     * @param persona the persona to set
     */
    public void setPersona(Persona persona) {
        this.persona = persona;
    }

    /**
     * @return the estado
     */
    public Estados getEstado() {
        return estado;
    }

    /**
     * @param estado the estado to set
     */
    public void setEstado(Estados estado) {
        this.estado = estado;
    }

    public Denunciante(int idDenunciante, Persona persona, Estados estado) {
        this.idDenunciante = idDenunciante;
        this.persona = persona;
        this.estado = estado;
    }

    public Denunciante() {
    }

    @Override
    public String toString() {
        return "Denunciante{" + "idDenunciante=" + idDenunciante + ", persona=" + persona + ", estado=" + estado + '}';
    }

    
    
}

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
    private int idPersona;
    private boolean estado;

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
     * @return the idPersona
     */
    public int getIdPersona() {
        return idPersona;
    }

    /**
     * @param idPersona the idPersona to set
     */
    public void setIdPersona(int idPersona) {
        this.idPersona = idPersona;
    }

    /**
     * @return the estado
     */
    public boolean isEstado() {
        return estado;
    }

    /**
     * @param estado the estado to set
     */
    public void setEstado(boolean estado) {
        this.estado = estado;
    }

    public Denunciante(int idDenunciante, int idPersona, boolean estado) {
        this.idDenunciante = idDenunciante;
        this.idPersona = idPersona;
        this.estado = estado;
    }

    public Denunciante() {
    }

    @Override
    public String toString() {
        return "Denunciante{" + "idDenunciante=" + idDenunciante + ", idPersona=" + idPersona + ", estado=" + estado + '}';
    }
    
}

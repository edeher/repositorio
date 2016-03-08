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
public class Facultad {
    private int idFacultad;
    private String descripcion;
    private Estados estado;

    /**
     * @return the idFacultad
     */
    public int getIdFacultad() {
        return idFacultad;
    }

    /**
     * @param idFacultad the idFacultad to set
     */
    public void setIdFacultad(int idFacultad) {
        this.idFacultad = idFacultad;
    }

    /**
     * @return the descripcion
     */
    public String getDescripcion() {
        return descripcion;
    }

    /**
     * @param descripcion the descripcion to set
     */
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
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

    public Facultad(int idFacultad, String descripcion, Estados estado) {
        this.idFacultad = idFacultad;
        this.descripcion = descripcion;
        this.estado = estado;
    }

    public Facultad() {
    }

    @Override
    public String toString() {
        return "Facultad{" + "idFacultad=" + idFacultad + ", descripcion=" + descripcion + ", estado=" + estado + '}';
    }
    
}

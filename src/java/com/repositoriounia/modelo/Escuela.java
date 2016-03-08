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
public class Escuela {
    private int idEscuela;
    private Facultad facultad;
    private String descripcion;
    private Estados estado;

    /**
     * @return the idEscuela
     */
    public int getIdEscuela() {
        return idEscuela;
    }

    /**
     * @param idEscuela the idEscuela to set
     */
    public void setIdEscuela(int idEscuela) {
        this.idEscuela = idEscuela;
    }

    /**
     * @return the facultad
     */
    public Facultad getFacultad() {
        return facultad;
    }

    /**
     * @param facultad the facultad to set
     */
    public void setFacultad(Facultad facultad) {
        this.facultad = facultad;
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

    public Escuela(int idEscuela, Facultad facultad, String descripcion, Estados estado) {
        this.idEscuela = idEscuela;
        this.facultad = facultad;
        this.descripcion = descripcion;
        this.estado = estado;
    }

    public Escuela() {
    }

    @Override
    public String toString() {
        return "Escuela{" + "idEscuela=" + idEscuela + ", facultad=" + facultad + ", descripcion=" + descripcion + ", estado=" + estado + '}';
    }
    
}

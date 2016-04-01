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
public class AreaInvestigacion {
    private int idAreaInvestigacion;
    private String descripcion;
    private Estados estado;

    /**
     * @return the idAreaInvestigacion
     */
    public int getIdAreaInvestigacion() {
        return idAreaInvestigacion;
    }

    /**
     * @param idAreaInvestigacion the idAreaInvestigacion to set
     */
    public void setIdAreaInvestigacion(int idAreaInvestigacion) {
        this.idAreaInvestigacion = idAreaInvestigacion;
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

    public AreaInvestigacion(int idAreaInvestigacion, String descripcion, Estados estado) {
        this.idAreaInvestigacion = idAreaInvestigacion;
        this.descripcion = descripcion;
        this.estado = estado;
    }

    public AreaInvestigacion() {
    }

    public AreaInvestigacion(int idAreaInvestigacion, String descripcion) {
        this.idAreaInvestigacion = idAreaInvestigacion;
        this.descripcion = descripcion;
    }

    @Override
    public String toString() {
        return "AreaInvestigacion{" + "idAreaInvestigacion=" + idAreaInvestigacion + ", descripcion=" + descripcion + '}';
    }
    
}

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
public class LineaInvestigacion {
    private int idLineaInvestigacion;
    private AreaInvestigacion areaInvestigacion;
    private String descripcion;
    private Estados estado;

    /**
     * @return the idLineaInvestigacion
     */
    public int getIdLineaInvestigacion() {
        return idLineaInvestigacion;
    }

    /**
     * @param idLineaInvestigacion the idLineaInvestigacion to set
     */
    public void setIdLineaInvestigacion(int idLineaInvestigacion) {
        this.idLineaInvestigacion = idLineaInvestigacion;
    }

    /**
     * @return the areaInvestigacion
     */
    public AreaInvestigacion getAreaInvestigacion() {
        return areaInvestigacion;
    }

    /**
     * @param areaInvestigacion the areaInvestigacion to set
     */
    public void setAreaInvestigacion(AreaInvestigacion areaInvestigacion) {
        this.areaInvestigacion = areaInvestigacion;
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

    public LineaInvestigacion(int idLineaInvestigacion, AreaInvestigacion areaInvestigacion, String descripcion, Estados estado) {
        this.idLineaInvestigacion = idLineaInvestigacion;
        this.areaInvestigacion = areaInvestigacion;
        this.descripcion = descripcion;
        this.estado = estado;
    }

    public LineaInvestigacion() {
    }

    public LineaInvestigacion(String descripcion) {
        this.descripcion = descripcion;
    }

    @Override
    public String toString() {
        return "LineaInvestigacion{" + "idLineaInvestigacion=" + idLineaInvestigacion + ", areaInvestigacion=" + areaInvestigacion + ", descripcion=" + descripcion + ", estado=" + estado + '}';
    }
    
}

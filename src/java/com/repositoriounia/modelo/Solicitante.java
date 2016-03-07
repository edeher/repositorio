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
public class Solicitante {
    private int idSolicitante;
    private int idPersona;
    private String tipoEntidad;
    private String entidad;
    private String areaTrabajo;
    private boolean estado;

    /**
     * @return the idSolicitante
     */
    public int getIdSolicitante() {
        return idSolicitante;
    }

    /**
     * @param idSolicitante the idSolicitante to set
     */
    public void setIdSolicitante(int idSolicitante) {
        this.idSolicitante = idSolicitante;
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
     * @return the tipoEntidad
     */
    public String getTipoEntidad() {
        return tipoEntidad;
    }

    /**
     * @param tipoEntidad the tipoEntidad to set
     */
    public void setTipoEntidad(String tipoEntidad) {
        this.tipoEntidad = tipoEntidad;
    }

    /**
     * @return the entidad
     */
    public String getEntidad() {
        return entidad;
    }

    /**
     * @param entidad the entidad to set
     */
    public void setEntidad(String entidad) {
        this.entidad = entidad;
    }

    /**
     * @return the areaTrabajo
     */
    public String getAreaTrabajo() {
        return areaTrabajo;
    }

    /**
     * @param areaTrabajo the areaTrabajo to set
     */
    public void setAreaTrabajo(String areaTrabajo) {
        this.areaTrabajo = areaTrabajo;
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

    public Solicitante(int idSolicitante, int idPersona, String tipoEntidad, String entidad, String areaTrabajo, boolean estado) {
        this.idSolicitante = idSolicitante;
        this.idPersona = idPersona;
        this.tipoEntidad = tipoEntidad;
        this.entidad = entidad;
        this.areaTrabajo = areaTrabajo;
        this.estado = estado;
    }

    public Solicitante() {
    }

    @Override
    public String toString() {
        return "Solicitante{" + "idSolicitante=" + idSolicitante + ", idPersona=" + idPersona + ", tipoEntidad=" + tipoEntidad + ", entidad=" + entidad + ", areaTrabajo=" + areaTrabajo + ", estado=" + estado + '}';
    }
    
    
    
}

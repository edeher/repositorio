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
    private Persona persona;
    private TipoEntidad tipoEntidad;
    private String entidad;
    private String areaTrabajo;
    private Estados estado;

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
     * @return the tipoEntidad
     */
    public TipoEntidad getTipoEntidad() {
        return tipoEntidad;
    }

    /**
     * @param tipoEntidad the tipoEntidad to set
     */
    public void setTipoEntidad(TipoEntidad tipoEntidad) {
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
    public Estados getEstado() {
        return estado;
    }

    /**
     * @param estado the estado to set
     */
    public void setEstado(Estados estado) {
        this.estado = estado;
    }

    public Solicitante(int idSolicitante, Persona persona, TipoEntidad tipoEntidad, String entidad, String areaTrabajo, Estados estado) {
        this.idSolicitante = idSolicitante;
        this.persona = persona;
        this.tipoEntidad = tipoEntidad;
        this.entidad = entidad;
        this.areaTrabajo = areaTrabajo;
        this.estado = estado;
    }

    public Solicitante() {
    }

    @Override
    public String toString() {
        return "Solicitante{" + "idSolicitante=" + idSolicitante + ", persona=" + persona + ", tipoEntidad=" + tipoEntidad + ", entidad=" + entidad + ", areaTrabajo=" + areaTrabajo + ", estado=" + estado + '}';
    }

    
    
}

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
public class Solicitante extends Persona{
    private int idSolicitante;
    private TipoEntidad tipoEntidad;
    private String entidad;
    private String areaTrabajo;
  
    
    
    
    

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

    public Solicitante(int idSolicitante, TipoEntidad tipoEntidad, String entidad, String areaTrabajo, String nombres, String apellidos, String dni, Sexo sexo, String direccion, String telefono, String correro) {
        super(nombres, apellidos, dni, sexo, direccion, telefono, correro);
        this.idSolicitante = idSolicitante;
        this.tipoEntidad = tipoEntidad;
        this.entidad = entidad;
        this.areaTrabajo = areaTrabajo;
    }

    @Override
    public String toString() {
        return "Solicitante{" + "idSolicitante=" + idSolicitante + ", tipoEntidad=" + tipoEntidad + ", entidad=" + entidad + ", areaTrabajo=" + areaTrabajo + ", nombres=" + nombres + ", apellidos=" + apellidos + ", dni=" + dni + ", sexo=" + sexo + ", direccion=" + direccion + ", telefono=" + telefono + ", correro=" + correro + ", estado=" + estado + '}';
   
    }

    
    
}

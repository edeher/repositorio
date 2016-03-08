/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.repositoriounia.modelo;

import java.util.Date;

/**
 *
 * @author Mi Laptop
 */
public class Visita {
    private int idVisita;
    private ArchivoPublicacion archivoPublicacion;
    private Date fecha;
    private Estados estado;

    /**
     * @return the idVisita
     */
    public int getIdVisita() {
        return idVisita;
    }

    /**
     * @param idVisita the idVisita to set
     */
    public void setIdVisita(int idVisita) {
        this.idVisita = idVisita;
    }

    /**
     * @return the archivoPublicacion
     */
    public ArchivoPublicacion getArchivoPublicacion() {
        return archivoPublicacion;
    }

    /**
     * @param archivoPublicacion the archivoPublicacion to set
     */
    public void setArchivoPublicacion(ArchivoPublicacion archivoPublicacion) {
        this.archivoPublicacion = archivoPublicacion;
    }

    /**
     * @return the fecha
     */
    public Date getFecha() {
        return fecha;
    }

    /**
     * @param fecha the fecha to set
     */
    public void setFecha(Date fecha) {
        this.fecha = fecha;
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

    public Visita(int idVisita, ArchivoPublicacion archivoPublicacion, Date fecha, Estados estado) {
        this.idVisita = idVisita;
        this.archivoPublicacion = archivoPublicacion;
        this.fecha = fecha;
        this.estado = estado;
    }

    public Visita() {
    }

    @Override
    public String toString() {
        return "Visita{" + "idVisita=" + idVisita + ", archivoPublicacion=" + archivoPublicacion + ", fecha=" + fecha + ", estado=" + estado + '}';
    }
    
    
}

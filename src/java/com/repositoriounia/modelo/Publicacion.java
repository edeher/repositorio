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
public class Publicacion {
    private int idPublicacion;
    private LineaInvestigacion lineaInvestigacion;
    private String titulo;
    private Date fechaCarga;
    private Date fechaPublicacion;
    private Estados estado;

    /**
     * @return the idPublicacion
     */
    public int getIdPublicacion() {
        return idPublicacion;
    }

    /**
     * @param idPublicacion the idPublicacion to set
     */
    public void setIdPublicacion(int idPublicacion) {
        this.idPublicacion = idPublicacion;
    }

    /**
     * @return the lineaInvestigacion
     */
    public LineaInvestigacion getLineaInvestigacion() {
        return lineaInvestigacion;
    }

    /**
     * @param lineaInvestigacion the lineaInvestigacion to set
     */
    public void setLineaInvestigacion(LineaInvestigacion lineaInvestigacion) {
        this.lineaInvestigacion = lineaInvestigacion;
    }

    /**
     * @return the titulo
     */
    public String getTitulo() {
        return titulo;
    }

    /**
     * @param titulo the titulo to set
     */
    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    /**
     * @return the fechaCarga
     */
    public Date getFechaCarga() {
        return fechaCarga;
    }

    /**
     * @param fechaCarga the fechaCarga to set
     */
    public void setFechaCarga(Date fechaCarga) {
        this.fechaCarga = fechaCarga;
    }

    /**
     * @return the fechaPublicacion
     */
    public Date getFechaPublicacion() {
        return fechaPublicacion;
    }

    /**
     * @param fechaPublicacion the fechaPublicacion to set
     */
    public void setFechaPublicacion(Date fechaPublicacion) {
        this.fechaPublicacion = fechaPublicacion;
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

    public Publicacion(int idPublicacion, LineaInvestigacion lineaInvestigacion, String titulo, Date fechaCarga, Date fechaPublicacion) {
        this.idPublicacion = idPublicacion;
        this.lineaInvestigacion = lineaInvestigacion;
        this.titulo = titulo;
        this.fechaCarga = fechaCarga;
        this.fechaPublicacion = fechaPublicacion;
       
    }

    public Publicacion() {
        this.lineaInvestigacion=new LineaInvestigacion();
    }

    public Publicacion(int idPublicacion) {
        this.idPublicacion = idPublicacion;
    }

    @Override
    public String toString() {
        return "Publicacion{" + "idPublicacion=" + idPublicacion + ", lineaInvestigacion=" + lineaInvestigacion + ", titulo=" + titulo + ", fechaCarga=" + fechaCarga + ", fechaPublicacion=" + fechaPublicacion +  '}';
    }
    
}

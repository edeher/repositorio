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
public class TemasSugeridos {
   private int idTemaSugerido;
   private Solicitante solicitante;
   private Date fecha;
   private String tema;
   private String areaTematica;
   private Estados estado;

    public TemasSugeridos(int idTemaSugerido, Solicitante solicitante, Date fecha, String tema, String areaTematica) {
        this.idTemaSugerido = idTemaSugerido;
        this.solicitante = solicitante;
        this.fecha = fecha;
        this.tema = tema;
        this.areaTematica = areaTematica;
       
    }

    public TemasSugeridos() {
        this.solicitante=new Solicitante();
    }

    

    @Override
    public String toString() {
        return "TemasSugeridos{" + "idTemaSugerido=" + idTemaSugerido + ", solicitante=" + solicitante + ", fecha=" + fecha + ", tema=" + tema + ", areaTematica=" + areaTematica + '}';
    }

    /**
     * @return the idTemaSugerido
     */
    public int getIdTemaSugerido() {
        return idTemaSugerido;
    }

    /**
     * @param idTemaSugerido the idTemaSugerido to set
     */
    public void setIdTemaSugerido(int idTemaSugerido) {
        this.idTemaSugerido = idTemaSugerido;
    }

    /**
     * @return the solicitante
     */
    public Solicitante getSolicitante() {
        return solicitante;
    }

    /**
     * @param solicitante the solicitante to set
     */
    public void setSolicitante(Solicitante solicitante) {
        this.solicitante = solicitante;
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
     * @return the tema
     */
    public String getTema() {
        return tema;
    }

    /**
     * @param tema the tema to set
     */
    public void setTema(String tema) {
        this.tema = tema;
    }

    /**
     * @return the areaTematica
     */
    public String getAreaTematica() {
        return areaTematica;
    }

    /**
     * @param areaTematica the areaTematica to set
     */
    public void setAreaTematica(String areaTematica) {
        this.areaTematica = areaTematica;
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

   
    
}

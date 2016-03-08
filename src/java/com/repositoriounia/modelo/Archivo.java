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
public class Archivo {
    private int idArchivo;
    private String urlLocal;
    private String urlWeb;
    private Estados estado;

    /**
     * @return the idArchivo
     */
    public int getIdArchivo() {
        return idArchivo;
    }

    /**
     * @param idArchivo the idArchivo to set
     */
    public void setIdArchivo(int idArchivo) {
        this.idArchivo = idArchivo;
    }

    /**
     * @return the urlLocal
     */
    public String getUrlLocal() {
        return urlLocal;
    }

    /**
     * @param urlLocal the urlLocal to set
     */
    public void setUrlLocal(String urlLocal) {
        this.urlLocal = urlLocal;
    }

    /**
     * @return the urlWeb
     */
    public String getUrlWeb() {
        return urlWeb;
    }

    /**
     * @param urlWeb the urlWeb to set
     */
    public void setUrlWeb(String urlWeb) {
        this.urlWeb = urlWeb;
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

    public Archivo(int idArchivo, String urlLocal, String urlWeb, Estados estado) {
        this.idArchivo = idArchivo;
        this.urlLocal = urlLocal;
        this.urlWeb = urlWeb;
        this.estado = estado;
    }

    public Archivo() {
    }

    @Override
    public String toString() {
        return "Archivo{" + "idArchivo=" + idArchivo + ", urlLocal=" + urlLocal + ", urlWeb=" + urlWeb + ", estado=" + estado + '}';
    }
    
}

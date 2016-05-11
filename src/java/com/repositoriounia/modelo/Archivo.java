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
   protected int idArchivo;
    protected String urlLocal;
    protected String urlWeb;
    protected byte[] archivo;
    protected Estados estado;

    public int getIdArchivo() {
        return idArchivo;
    }

    public void setIdArchivo(int idArchivo) {
        this.idArchivo = idArchivo;
    }

    public String getUrlLocal() {
        return urlLocal;
    }

    public void setUrlLocal(String urlLocal) {
        this.urlLocal = urlLocal;
    }

    public String getUrlWeb() {
        return urlWeb;
    }

    public void setUrlWeb(String urlWeb) {
        this.urlWeb = urlWeb;
    }

    public byte[] getArchivo() {
        return archivo;
    }

    public void setArchivo(byte[] archivo) {
        this.archivo = archivo;
    }

    public Estados getEstado() {
        return estado;
    }

    public void setEstado(Estados estado) {
        this.estado = estado;
    }

    public Archivo() {
    }

    public Archivo(int idArchivo, String urlLocal, String urlWeb, byte[] archivo, Estados estado) {
        this.idArchivo = idArchivo;
        this.urlLocal = urlLocal;
        this.urlWeb = urlWeb;
        this.archivo = archivo;
        this.estado = estado;
    }

    public Archivo(int idArchivo, String urlLocal, String urlWeb, byte[] archivo) {
        this.idArchivo = idArchivo;
        this.urlLocal = urlLocal;
        this.urlWeb = urlWeb;
        this.archivo = archivo;
    }

    public Archivo(String urlLocal, String urlWeb, byte[] archivo) {
        this.urlLocal = urlLocal;
        this.urlWeb = urlWeb;
        this.archivo = archivo;
    }

    public Archivo(String urlLocal, String urlWeb) {
        this.urlLocal = urlLocal;
        this.urlWeb = urlWeb;
    }

    @Override
    public String toString() {
        return "Archivo{" + "idArchivo=" + idArchivo + ", urlLocal=" + urlLocal + ", urlWeb=" + urlWeb + ", archivo=" + archivo +'}';
    }

   
    
}

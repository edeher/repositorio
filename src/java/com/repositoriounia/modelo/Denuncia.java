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
public class Denuncia {
    private int idDenuncia;
    private Denunciante denunciante;
    private ArchivoPublicacion archivoPublicacion;
    private Date fecha;
    private String descripcion;
    private Estados estado;

    public Denuncia(int idDenuncia, Denunciante denunciante, ArchivoPublicacion archivoPublicacion, Date fecha, String descripcion, Estados estado) {
        this.idDenuncia = idDenuncia;
        this.denunciante = denunciante;
        this.archivoPublicacion = archivoPublicacion;
        this.fecha = fecha;
        this.descripcion = descripcion;
        this.estado = estado;
    }

    public Denuncia() {
    }

    @Override
    public String toString() {
        return "Denuncia{" + "idDenuncia=" + idDenuncia + ", denunciante=" + denunciante + ", archivoPublicacion=" + archivoPublicacion + ", fecha=" + fecha + ", descripcion=" + descripcion  + '}';
    }

    public Denuncia(int idDenuncia) {
        this.idDenuncia = idDenuncia;
    }

    public Denuncia(int idDenuncia, Denunciante denunciante, ArchivoPublicacion archivoPublicacion, Date fecha, String descripcion) {
        this.idDenuncia = idDenuncia;
        this.denunciante = denunciante;
        this.archivoPublicacion = archivoPublicacion;
        this.fecha = fecha;
        this.descripcion = descripcion;
    }

    
     
    
    public int getIdDenuncia() {
        return idDenuncia;
    }

    public void setIdDenuncia(int idDenuncia) {
        this.idDenuncia = idDenuncia;
    }

    public Denunciante getDenunciante() {
        return denunciante;
    }

    public void setDenunciante(Denunciante denunciante) {
        this.denunciante = denunciante;
    }

    public ArchivoPublicacion getArchivoPublicacion() {
        return archivoPublicacion;
    }

    public void setArchivoPublicacion(ArchivoPublicacion archivoPublicacion) {
        this.archivoPublicacion = archivoPublicacion;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Estados getEstado() {
        return estado;
    }

    public void setEstado(Estados estado) {
        this.estado = estado;
    }

    
}

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
public class Denuncia {
    private int idDenuncia;
    private Denunciante denunciante;
    private ArchivoPublicacion archivoPublicacion;
    private String descripcion;
    private Estados estado;

    /**
     * @return the idDenuncia
     */
    public int getIdDenuncia() {
        return idDenuncia;
    }

    /**
     * @param idDenuncia the idDenuncia to set
     */
    public void setIdDenuncia(int idDenuncia) {
        this.idDenuncia = idDenuncia;
    }

    /**
     * @return the denunciante
     */
    public Denunciante getDenunciante() {
        return denunciante;
    }

    /**
     * @param denunciante the denunciante to set
     */
    public void setDenunciante(Denunciante denunciante) {
        this.denunciante = denunciante;
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

    public Denuncia(int idDenuncia, Denunciante denunciante, ArchivoPublicacion archivoPublicacion, String descripcion, Estados estado) {
        this.idDenuncia = idDenuncia;
        this.denunciante = denunciante;
        this.archivoPublicacion = archivoPublicacion;
        this.descripcion = descripcion;
        this.estado = estado;
    }

    public Denuncia() {
    }

    @Override
    public String toString() {
        return "Denuncia{" + "idDenuncia=" + idDenuncia + ", denunciante=" + denunciante + ", archivoPublicacion=" + archivoPublicacion + ", descripcion=" + descripcion + ", estado=" + estado + '}';
    }
    
}

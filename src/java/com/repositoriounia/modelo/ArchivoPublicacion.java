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
public class ArchivoPublicacion {
    private int idArchivoPublicacion;
    private Archivo archivo;
    private Publicacion publicacion;
    private String descripcion;
    private Estados estado;

    /**
     * @return the idArchivoPublicacion
     */
    public int getIdArchivoPublicacion() {
        return idArchivoPublicacion;
    }

    /**
     * @param idArchivoPublicacion the idArchivoPublicacion to set
     */
    public void setIdArchivoPublicacion(int idArchivoPublicacion) {
        this.idArchivoPublicacion = idArchivoPublicacion;
    }

    /**
     * @return the archivo
     */
    public Archivo getArchivo() {
        return archivo;
    }

    /**
     * @param archivo the archivo to set
     */
    public void setArchivo(Archivo archivo) {
        this.archivo = archivo;
    }

    /**
     * @return the publicacion
     */
    public Publicacion getPublicacion() {
        return publicacion;
    }

    /**
     * @param publicacion the publicacion to set
     */
    public void setPublicacion(Publicacion publicacion) {
        this.publicacion = publicacion;
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

    public ArchivoPublicacion(int idArchivoPublicacion, Archivo archivo, Publicacion publicacion, String descripcion, Estados estado) {
        this.idArchivoPublicacion = idArchivoPublicacion;
        this.archivo = archivo;
        this.publicacion = publicacion;
        this.descripcion = descripcion;
        this.estado = estado;
    }

    public ArchivoPublicacion() {
    }

    @Override
    public String toString() {
        return "ArchivoPublicacion{" + "idArchivoPublicacion=" + idArchivoPublicacion + ", archivo=" + archivo + ", publicacion=" + publicacion + ", descripcion=" + descripcion + ", estado=" + estado + '}';
    }
    
}

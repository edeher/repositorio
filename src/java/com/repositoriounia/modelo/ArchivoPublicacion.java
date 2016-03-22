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
public class ArchivoPublicacion extends Archivo{
    private int idArchivoPublicacion;
    private Publicacion publicacion;
    private DescripcionArchivo descripcion;

    public ArchivoPublicacion(int idArchivoPublicacion, Publicacion publicacion, DescripcionArchivo descripcion, String urlLocal, String urlWeb) {
        super(urlLocal, urlWeb);
        this.idArchivoPublicacion = idArchivoPublicacion;
        this.publicacion = publicacion;
        this.descripcion = descripcion;
    }

    public ArchivoPublicacion() {
    }

    public ArchivoPublicacion(int idArchivoPublicacion) {
        this.idArchivoPublicacion = idArchivoPublicacion;
    }

    @Override
    public String toString() {
        return "ArchivoPublicacion{" + "idArchivoPublicacion=" + idArchivoPublicacion + ", publicacion=" + publicacion + ", descripcion=" + descripcion + '}';
    }
    

    public String toString2() {
        return "ArchivoPublicacion{" + "idArchivoPublicacion=" + idArchivoPublicacion + ", publicacion=" + publicacion + ", descripcion=" + descripcion.getNom() + ", urlLocal=" + urlLocal + ", urlWeb=" + urlWeb + '}';
    }
    
    
    
    

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
    public DescripcionArchivo getDescripcion() {
        return descripcion;
    }

    /**
     * @param descripcion the descripcion to set
     */
    public void setDescripcion(DescripcionArchivo descripcion) {
        this.descripcion = descripcion;
    }
    
}

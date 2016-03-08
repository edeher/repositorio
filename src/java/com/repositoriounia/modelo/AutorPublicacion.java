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
public class AutorPublicacion {
    private int idAutorPublicacion;
    private Autor autor;
    private Publicacion publicacion;
    private Estados estado;

    /**
     * @return the idAutorPublicacion
     */
    public int getIdAutorPublicacion() {
        return idAutorPublicacion;
    }

    /**
     * @param idAutorPublicacion the idAutorPublicacion to set
     */
    public void setIdAutorPublicacion(int idAutorPublicacion) {
        this.idAutorPublicacion = idAutorPublicacion;
    }

    /**
     * @return the autor
     */
    public Autor getAutor() {
        return autor;
    }

    /**
     * @param autor the autor to set
     */
    public void setAutor(Autor autor) {
        this.autor = autor;
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

    public AutorPublicacion(int idAutorPublicacion, Autor autor, Publicacion publicacion, Estados estado) {
        this.idAutorPublicacion = idAutorPublicacion;
        this.autor = autor;
        this.publicacion = publicacion;
        this.estado = estado;
    }

    public AutorPublicacion() {
    }

    @Override
    public String toString() {
        return "AutorPublicacion{" + "idAutorPublicacion=" + idAutorPublicacion + ", autor=" + autor + ", publicacion=" + publicacion + ", estado=" + estado + '}';
    }
    
}

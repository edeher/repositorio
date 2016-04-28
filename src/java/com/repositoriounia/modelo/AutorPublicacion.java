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
    private TipoAutor tipoautor;
    private Estados estado;

    public AutorPublicacion() {
        this.autor=new Autor();
        this.publicacion=new Publicacion();
    }

    public AutorPublicacion(int idAutorPublicacion, Autor autor, Publicacion publicacion, TipoAutor tipoautor, Estados estado) {
        this.idAutorPublicacion = idAutorPublicacion;
        this.autor = autor;
        this.publicacion = publicacion;
        this.tipoautor = tipoautor;
        this.estado = estado;
    }

    public AutorPublicacion(int idAutorPublicacion, Autor autor, Publicacion publicacion, TipoAutor tipoautor) {
        this.idAutorPublicacion = idAutorPublicacion;
        this.autor = autor;
        this.publicacion = publicacion;
        this.tipoautor = tipoautor;
    }

    @Override
    public String toString() {
        return "AutorPublicacion{" + "idAutorPublicacion=" + idAutorPublicacion + ", autor=" + autor + ", publicacion=" + publicacion + ", tipoautor=" + tipoautor + '}';
    }

    
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
     * @return the tipoautor
     */
    public TipoAutor getTipoautor() {
        return tipoautor;
    }

    /**
     * @param tipoautor the tipoautor to set
     */
    public void setTipoautor(TipoAutor tipoautor) {
        this.tipoautor = tipoautor;
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

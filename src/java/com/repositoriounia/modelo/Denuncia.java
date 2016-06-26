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
    private DescripDenun descripdenun;
    private Estados estado;

    public Denuncia(int idDenuncia, Denunciante denunciante, ArchivoPublicacion archivoPublicacion, Date fecha, DescripDenun descripdenun, Estados estado) {
        this.idDenuncia = idDenuncia;
        this.denunciante = denunciante;
        this.archivoPublicacion = archivoPublicacion;
        this.fecha = fecha;
        this.descripdenun = descripdenun;
        this.estado = estado;
    }


    public Denuncia() {
        this.denunciante=new Denunciante();
        this.archivoPublicacion=new ArchivoPublicacion();
    }

    @Override
    public String toString() {
        return "Denuncia{" + "idDenuncia=" + idDenuncia + ", denunciante=" + denunciante + ", archivoPublicacion=" + archivoPublicacion + ", fecha=" + fecha + ", descripdenun=" + getDescripdenun() + ", estado=" + estado + '}';
    }

   

    

    public Denuncia(int idDenuncia) {
        this.idDenuncia = idDenuncia;
    }

    public Denuncia(int idDenuncia, Denunciante denunciante, ArchivoPublicacion archivoPublicacion, Date fecha, DescripDenun descripdenun) {
        this.idDenuncia = idDenuncia;
        this.denunciante = denunciante;
        this.archivoPublicacion = archivoPublicacion;
        this.fecha = fecha;
        this.descripdenun = descripdenun;
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

    

    public Estados getEstado() {
        return estado;
    }

    public void setEstado(Estados estado) {
        this.estado = estado;
    }

    /**
     * @return the descripdenun
     */
    public DescripDenun getDescripdenun() {
        return descripdenun;
    }

    /**
     * @param descripdenun the descripdenun to set
     */
    public void setDescripdenun(DescripDenun descripdenun) {
        this.descripdenun = descripdenun;
    }

    
}

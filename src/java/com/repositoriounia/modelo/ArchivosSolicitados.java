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
public class ArchivosSolicitados {
   private int idArchivoSolicitado;
   private Solicitante solicitante;
   private ArchivoPublicacion archivoPublicacion;
   private Date fechaSolicitud;
   private Respuesta Respuesta;
   private Date fechaRespuesta;
   private String descripcionRespuesta;
   private Estados estado;

    /**
     * @return the idArchivoSolicitado
     */
    public int getIdArchivoSolicitado() {
        return idArchivoSolicitado;
    }

    /**
     * @param idArchivoSolicitado the idArchivoSolicitado to set
     */
    public void setIdArchivoSolicitado(int idArchivoSolicitado) {
        this.idArchivoSolicitado = idArchivoSolicitado;
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
     * @return the fechaSolicitud
     */
    public Date getFechaSolicitud() {
        return fechaSolicitud;
    }

    /**
     * @param fechaSolicitud the fechaSolicitud to set
     */
    public void setFechaSolicitud(Date fechaSolicitud) {
        this.fechaSolicitud = fechaSolicitud;
    }

    /**
     * @return the Respuesta
     */
    public Respuesta getRespuesta() {
        return Respuesta;
    }

    /**
     * @param Respuesta the Respuesta to set
     */
    public void setRespuesta(Respuesta Respuesta) {
        this.Respuesta = Respuesta;
    }

    /**
     * @return the fechaRespuesta
     */
    public Date getFechaRespuesta() {
        return fechaRespuesta;
    }

    /**
     * @param fechaRespuesta the fechaRespuesta to set
     */
    public void setFechaRespuesta(Date fechaRespuesta) {
        this.fechaRespuesta = fechaRespuesta;
    }

    /**
     * @return the descripcionRespuesta
     */
    public String getDescripcionRespuesta() {
        return descripcionRespuesta;
    }

    /**
     * @param descripcionRespuesta the descripcionRespuesta to set
     */
    public void setDescripcionRespuesta(String descripcionRespuesta) {
        this.descripcionRespuesta = descripcionRespuesta;
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

    public ArchivosSolicitados(int idArchivoSolicitado, Solicitante solicitante, ArchivoPublicacion archivoPublicacion, Date fechaSolicitud, Respuesta Respuesta, Date fechaRespuesta, String descripcionRespuesta, Estados estado) {
        this.idArchivoSolicitado = idArchivoSolicitado;
        this.solicitante = solicitante;
        this.archivoPublicacion = archivoPublicacion;
        this.fechaSolicitud = fechaSolicitud;
        this.Respuesta = Respuesta;
        this.fechaRespuesta = fechaRespuesta;
        this.descripcionRespuesta = descripcionRespuesta;
        this.estado = estado;
    }

    public ArchivosSolicitados() {
    }

    @Override
    public String toString() {
        return "ArchivosSolicitados{" + "idArchivoSolicitado=" + idArchivoSolicitado + ", solicitante=" + solicitante + ", archivoPublicacion=" + archivoPublicacion + ", fechaSolicitud=" + fechaSolicitud + ", Respuesta=" + Respuesta + ", fechaRespuesta=" + fechaRespuesta + ", descripcionRespuesta=" + descripcionRespuesta + ", estado=" + estado + '}';
    }

    
    
}

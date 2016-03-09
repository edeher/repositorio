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
   
   private Estados estado;

    public int getIdArchivoSolicitado() {
        return idArchivoSolicitado;
    }

    public void setIdArchivoSolicitado(int idArchivoSolicitado) {
        this.idArchivoSolicitado = idArchivoSolicitado;
    }

    public Solicitante getSolicitante() {
        return solicitante;
    }

    public void setSolicitante(Solicitante solicitante) {
        this.solicitante = solicitante;
    }

    public ArchivoPublicacion getArchivoPublicacion() {
        return archivoPublicacion;
    }

    public void setArchivoPublicacion(ArchivoPublicacion archivoPublicacion) {
        this.archivoPublicacion = archivoPublicacion;
    }

    public Date getFechaSolicitud() {
        return fechaSolicitud;
    }

    public void setFechaSolicitud(Date fechaSolicitud) {
        this.fechaSolicitud = fechaSolicitud;
    }

    public Respuesta getRespuesta() {
        return Respuesta;
    }

    public void setRespuesta(Respuesta Respuesta) {
        this.Respuesta = Respuesta;
    }

    public Date getFechaRespuesta() {
        return fechaRespuesta;
    }

    public void setFechaRespuesta(Date fechaRespuesta) {
        this.fechaRespuesta = fechaRespuesta;
    }

    public Estados getEstado() {
        return estado;
    }

    public void setEstado(Estados estado) {
        this.estado = estado;
    }

   
   
    public ArchivosSolicitados(int idArchivoSolicitado, Solicitante solicitante, ArchivoPublicacion archivoPublicacion, Date fechaSolicitud, Respuesta Respuesta, Date fechaRespuesta, Estados estado) {
        this.idArchivoSolicitado = idArchivoSolicitado;
        this.solicitante = solicitante;
        this.archivoPublicacion = archivoPublicacion;
        this.fechaSolicitud = fechaSolicitud;
        this.Respuesta = Respuesta;
        this.fechaRespuesta = fechaRespuesta;
        this.estado = estado;
    }

    public ArchivosSolicitados() {
    }

    @Override
    public String toString() {
        return "ArchivosSolicitados{" + "idArchivoSolicitado=" + idArchivoSolicitado + ", solicitante=" + solicitante + ", archivoPublicacion=" + archivoPublicacion + ", fechaSolicitud=" + fechaSolicitud + ", Respuesta=" + Respuesta + ", fechaRespuesta=" + fechaRespuesta + ", estado=" + estado + '}';
    }

   
    
}

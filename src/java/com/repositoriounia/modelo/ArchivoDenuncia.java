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
public class ArchivoDenuncia {
    private int idArchivoDenuncia;
    private Archivo archivo;
    private Denuncia denuncia;
    private Estados estado;

    /**
     * @return the idArchivoDenuncia
     */
    public int getIdArchivoDenuncia() {
        return idArchivoDenuncia;
    }

    /**
     * @param idArchivoDenuncia the idArchivoDenuncia to set
     */
    public void setIdArchivoDenuncia(int idArchivoDenuncia) {
        this.idArchivoDenuncia = idArchivoDenuncia;
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
     * @return the denuncia
     */
    public Denuncia getDenuncia() {
        return denuncia;
    }

    /**
     * @param denuncia the denuncia to set
     */
    public void setDenuncia(Denuncia denuncia) {
        this.denuncia = denuncia;
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

    public ArchivoDenuncia(int idArchivoDenuncia, Archivo archivo, Denuncia denuncia, Estados estado) {
        this.idArchivoDenuncia = idArchivoDenuncia;
        this.archivo = archivo;
        this.denuncia = denuncia;
        this.estado = estado;
    }

    public ArchivoDenuncia() {
    }

    @Override
    public String toString() {
        return "ArchivoDenuncia{" + "idArchivoDenuncia=" + idArchivoDenuncia + ", archivo=" + archivo + ", denuncia=" + denuncia + ", estado=" + estado + '}';
    }
    
}

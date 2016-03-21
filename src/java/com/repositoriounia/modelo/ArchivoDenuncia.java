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
public class ArchivoDenuncia extends Archivo{
    private int idArchivoDenuncia;
    private Denuncia denuncia;

    public ArchivoDenuncia(int idArchivoDenuncia, Denuncia denuncia, String urlLocal, String urlWeb) {
        super(urlLocal, urlWeb);
        this.idArchivoDenuncia = idArchivoDenuncia;
        this.denuncia = denuncia;
    }

    public ArchivoDenuncia() {
    }
    
    

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

    @Override
    public String toString() {
        return "ArchivoDenuncia{" + "idArchivoDenuncia=" + idArchivoDenuncia + ", denuncia=" + denuncia + "urlLocal=" + urlLocal + ", urlWeb=" + urlWeb + '}';
    }
  

   
}

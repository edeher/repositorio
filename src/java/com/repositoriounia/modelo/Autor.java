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
public class Autor {
    private int idAutor;
    private Persona persona;
    private Escuela escuela;
    private TipoAutor tipoAutor;
    private String profesion;
    private String especialidad;
    private String grado;
    private Estados estado;

    /**
     * @return the idAutor
     */
    public int getIdAutor() {
        return idAutor;
    }

    /**
     * @param idAutor the idAutor to set
     */
    public void setIdAutor(int idAutor) {
        this.idAutor = idAutor;
    }

    /**
     * @return the persona
     */
    public Persona getPersona() {
        return persona;
    }

    /**
     * @param persona the persona to set
     */
    public void setPersona(Persona persona) {
        this.persona = persona;
    }

    /**
     * @return the escuela
     */
    public Escuela getEscuela() {
        return escuela;
    }

    /**
     * @param escuela the escuela to set
     */
    public void setEscuela(Escuela escuela) {
        this.escuela = escuela;
    }

    /**
     * @return the tipoAutor
     */
    public TipoAutor getTipoAutor() {
        return tipoAutor;
    }

    /**
     * @param tipoAutor the tipoAutor to set
     */
    public void setTipoAutor(TipoAutor tipoAutor) {
        this.tipoAutor = tipoAutor;
    }

    /**
     * @return the profesion
     */
    public String getProfesion() {
        return profesion;
    }

    /**
     * @param profesion the profesion to set
     */
    public void setProfesion(String profesion) {
        this.profesion = profesion;
    }

    /**
     * @return the especialidad
     */
    public String getEspecialidad() {
        return especialidad;
    }

    /**
     * @param especialidad the especialidad to set
     */
    public void setEspecialidad(String especialidad) {
        this.especialidad = especialidad;
    }

    /**
     * @return the grado
     */
    public String getGrado() {
        return grado;
    }

    /**
     * @param grado the grado to set
     */
    public void setGrado(String grado) {
        this.grado = grado;
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

    public Autor(int idAutor, Persona persona, Escuela escuela, TipoAutor tipoAutor, String profesion, String especialidad, String grado, Estados estado) {
        this.idAutor = idAutor;
        this.persona = persona;
        this.escuela = escuela;
        this.tipoAutor = tipoAutor;
        this.profesion = profesion;
        this.especialidad = especialidad;
        this.grado = grado;
        this.estado = estado;
    }

    public Autor() {
    }

    @Override
    public String toString() {
        return "Autor{" + "idAutor=" + idAutor + ", persona=" + persona + ", escuela=" + escuela + ", tipoAutor=" + tipoAutor + ", profesion=" + profesion + ", especialidad=" + especialidad + ", grado=" + grado + ", estado=" + estado + '}';
    }

    
    
}

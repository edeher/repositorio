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
public class Autor extends Persona{
    private int idAutor;
    private Escuela escuela;
    private TipoAutor tipoAutor;
    private String profesion;
    private String especialidad;
    private String grado;
    
    

    public Autor(int idAutor, Escuela escuela, TipoAutor tipoAutor, String profesion, String especialidad, String grado, String nombres, String apellidos, String dni, Sexo sexo, String direccion, String telefono, String correro) {
        super(nombres, apellidos, dni, sexo, direccion, telefono, correro);
        this.idAutor = idAutor;
        this.escuela =escuela;
        this.tipoAutor = tipoAutor;
        this.profesion = profesion;
        this.especialidad = especialidad;
        this.grado = grado;
    }

    public Autor() {
        this.escuela=new Escuela();
    }

   
   
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

    @Override
    public String toString() {
        return "Autor{" + "idAutor=" + idAutor + ", escuela=" + escuela + ", tipoAutor=" + tipoAutor.getNom() + ", profesion=" + profesion + ", especialidad=" + especialidad + ", grado=" + grado + ", nombres=" + nombres + ", apellidos=" + apellidos + ", dni=" + dni + ", sexo=" + sexo + ", direccion=" + direccion + ", telefono=" + telefono + ", correro=" + correro + '}';
   
    }
   
    
}

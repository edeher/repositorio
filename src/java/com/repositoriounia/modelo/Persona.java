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
public class Persona {
     protected int idPersona;
    protected String nombres;
     protected String apellidos;
     protected String dni;
     protected Sexo sexo;
     protected String direccion;
    protected String telefono;
     protected String correro;
     protected Estados estado;

    /**
     * @return the idPersona
     */
    public int getIdPersona() {
        return idPersona;
    }

    /**
     * @param idPersona the idPersona to set
     */
    public void setIdPersona(int idPersona) {
        this.idPersona = idPersona;
    }

    /**
     * @return the nombres
     */
    public String getNombres() {
        return nombres;
    }

    /**
     * @param nombres the nombres to set
     */
    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    /**
     * @return the apellidos
     */
    public String getApellidos() {
        return apellidos;
    }

    /**
     * @param apellidos the apellidos to set
     */
    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    /**
     * @return the dni
     */
    public String getDni() {
        return dni;
    }

    /**
     * @param dni the dni to set
     */
    public void setDni(String dni) {
        this.dni = dni;
    }

    /**
     * @return the sexo
     */
    public Sexo getSexo() {
        return sexo;
    }

    /**
     * @param sexo the sexo to set
     */
    public void setSexo(Sexo sexo) {
        this.sexo = sexo;
    }

    /**
     * @return the direccion
     */
    public String getDireccion() {
        return direccion;
    }

    /**
     * @param direccion the direccion to set
     */
    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    /**
     * @return the telefono
     */
    public String getTelefono() {
        return telefono;
    }

    /**
     * @param telefono the telefono to set
     */
    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    /**
     * @return the correro
     */
    public String getCorrero() {
        return correro;
    }

    /**
     * @param correro the correro to set
     */
    public void setCorrero(String correro) {
        this.correro = correro;
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

   
   

    public Persona(String nombres, String apellidos, String dni, Sexo sexo, String direccion, String telefono, String correro) {
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.dni = dni;
        this.sexo = sexo;
        this.direccion = direccion;
        this.telefono = telefono;
        this.correro = correro;
    }
       
    public Persona() {
    }

    public Persona(String nombres) {
        this.nombres = nombres;
    }

    @Override
    public String toString() {
        return "Persona{" + "idPersona=" + idPersona + ", nombres=" + nombres + ", apellidos=" + apellidos + ", dni=" + dni + ", sexo=" + sexo + ", direccion=" + direccion + ", telefono=" + telefono + ", correro=" + correro  + '}';
    }

    
    
}

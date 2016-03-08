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
     private  int idPersona;
     private String nombres;
     private String apellidos;
     private String dni;
     private Sexo sexo;
     private String direccion;
     private String telefono;
     private String correro;
     private Estados estado;

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

    public Persona(int idPersona, String nombres, String apellidos, String dni, Sexo sexo, String direccion, String telefono, String correro, Estados estado) {
        this.idPersona = idPersona;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.dni = dni;
        this.sexo = sexo;
        this.direccion = direccion;
        this.telefono = telefono;
        this.correro = correro;
        this.estado = estado;
    }

    public Persona() {
    }

    @Override
    public String toString() {
        return "Persona{" + "idPersona=" + idPersona + ", nombres=" + nombres + ", apellidos=" + apellidos + ", dni=" + dni + ", sexo=" + sexo + ", direccion=" + direccion + ", telefono=" + telefono + ", correro=" + correro + ", estado=" + estado + '}';
    }

    
    
}

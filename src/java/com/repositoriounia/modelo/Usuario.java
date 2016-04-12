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
public class Usuario {
    private int  idUsuario;
   private Persona persona;
   private String usuario;
   private String password;
   private TipoUsuario tipo;
   private String estado;

    @Override
    public String toString() {
        return "Usuario{" + "idUsuario=" + idUsuario + ", persona=" + persona + ", usuario=" + usuario + ", password=" + password + ", tipo=" + tipo.getNom() + '}';
    }
   
   
   

    public Usuario() {
        this.persona=new Persona();
    }

    public Usuario(Persona persona) {
        this.persona = persona;
    }

    public Usuario(int idUsuario, Persona persona, String usuario, String password, TipoUsuario tipo) {
        this.idUsuario = idUsuario;
        this.persona = persona;
        this.usuario = usuario;
        this.password = password;
        this.tipo = tipo;
    }

   
   
    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public Persona getPersona() {
        return persona;
    }

    public void setPersona(Persona persona) {
        this.persona = persona;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public TipoUsuario getTipo() {
        return tipo;
    }

    public void setTipo(TipoUsuario tipo) {
        this.tipo = tipo;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

   
   
}

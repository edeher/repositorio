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
public class NombreMes {
    private String nombre;

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public NombreMes(String nombre) {
        this.nombre = nombre;
    }

    public NombreMes() {
    }
    public String nombremes(int mes){
        String mess="";
            switch(mes){
      case 0:
        {
          mess="Enero";
          break;
        }
      case 1:
        {
          mess="Febrero";
          break;
        }
      case 2:
        {
          mess="Marzo";
          break;
        }
      case 3:
        {
          mess="Abril";
          break;
        }
      case 4:
        {
          mess="Mayo";
          break;
        }
      case 5:
        {
          mess="Junio";
          break;
        }
      case 6:
        {
          mess="Julio";
          break;
        }
      case 7:
        {
          mess="Agosto";
          break;
        }
      case 8:
        {
          mess="Septiembre";
          break;
        }
      case 9:
        {
          mess="Octubre";
          break;
        }
      case 10:
        {
          mess="Noviembre";
          break;
        }
      case 11:
        {
          mess="Diciembre";
          break;
        }
      default:
        {
          mess="Error";
          break;
        }
    }
        
      return mess; 
    }
    
}

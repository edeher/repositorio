
package com.repositoriounia.modelo;

public enum Respuesta {
   ATENDIDOWEB("Se entrego link"),
   ATENDIDOFISICO("Se entrego en Fisico"),
   NOATENDIDO("Sin respuesta"),
   RECHAZADO("No procede");
   
   
   private String nom;

    /**
     * @return the nom
     */
    public String getNom() {
        return nom;
    }

    /**
     * @param nom the nom to set
     */
    public void setNom(String nom) {
        this.nom = nom;
    }

    private Respuesta(String nom) {
        this.nom = nom;
    }
    
}

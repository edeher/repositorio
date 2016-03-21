
package com.repositoriounia.modelo;

public enum Respuesta {
   ATENDIDO("Se entrego link"),
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

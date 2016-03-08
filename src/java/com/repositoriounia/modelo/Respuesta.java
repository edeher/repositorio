
package com.repositoriounia.modelo;

public enum Respuesta {
   ATENDIDO("Se_entrego_link"),
   NOATENDIDO("Sin_respuesta"),
   RECHAZADO("No_procede");
   
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

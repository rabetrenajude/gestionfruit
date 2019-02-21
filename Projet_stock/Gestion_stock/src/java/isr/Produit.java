/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package isr;

/**
 *
 * @author HP
 */
public class Produit {
  private String id;  
  private String description;
  private String nombre_entrant;   
    
     public Produit() { 

    
}       
    public Produit(String id ,String description, String nombre_entrant) {
        this.id = id;
        this.description = description;
        this.nombre_entrant = nombre_entrant;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
    

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getNombre_entrant() {
        return nombre_entrant;
    }

    public void setNombre_entrant(String nombre_entrant) {
        this.nombre_entrant = nombre_entrant;
    }
  
 

}

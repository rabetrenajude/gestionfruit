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
public class Sortant {
  private String id;  
  private String designation;
  private String quantite_sortant;   
    
     public Sortant() { 

    
}       
    public Sortant(String id ,String designation, String quantite_sortant) {
        this.id = id;
        this.designation = designation;
        this.quantite_sortant = quantite_sortant;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public String getQuantite_sortant() {
        return quantite_sortant;
    }

    public void setQuantite_sortant(String quantite_sortant) {
        this.quantite_sortant = quantite_sortant;
    }

    
  
 

}

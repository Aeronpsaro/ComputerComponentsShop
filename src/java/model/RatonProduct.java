/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Usuario
 */
public class RatonProduct extends GenericProduct{
    
    public RatonProduct(String name, String description, String image, float price, String brand) {
        super(name, description, image, price, brand);
    }

    public RatonProduct (GenericProduct p){
        super(p.name, p.description, p.image, p.price, p.brand);
    }
    
}

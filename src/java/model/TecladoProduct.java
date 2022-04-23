/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Usuario
 */
public class TecladoProduct extends GenericProduct{
    
    public TecladoProduct(String name, String description, String image, float price, String brand) {
        super(name, description, image, price, brand);
    }

    public TecladoProduct(GenericProduct p){
        super(p.name, p.description, p.image, p.price, p.brand);
    }
    
}

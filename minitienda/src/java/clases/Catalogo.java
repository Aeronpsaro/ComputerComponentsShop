/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package clases;


import java.util.ArrayList;
import java.util.List;

public class Catalogo {
    private static final Catalogo INSTANCE = new Catalogo();
    
    private final List<Producto> productos;
    
    private Catalogo() {
        productos = new ArrayList();
    }
    
    public List<Producto> getProductos() {
        return productos;
    }
    
    public void testInitialize() {
        for (int i=0; i<20; i++) {
            productos.add(new TestProducto());
        }
    }
    
    public static Catalogo getCatalogue() {
        return INSTANCE;
    }
}

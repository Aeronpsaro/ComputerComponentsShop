package model;

import database.Conector;
import database.TestDB;
import java.util.ArrayList;
import java.util.List;

public class Catalogue {
    private final List<Product> products;
    List<GenericProduct> productsAux;
    
    public Catalogue() {
        products = new ArrayList();
    }
    
    public List<Product> getProducts() {
        return products;
    }

    public Product getProductById(int id){
        for(Product p:products){
            if(p.getId() == id){
                return p;
            }else{ 
                return null;
            }
            
                
        }
        return null;
    }
    
    public void testInitialize() {
        Conector con = new Conector();

        try {
            con.connect();
        } catch (Exception ex) {
            System.err.println("coneccion fallida");
        }

        products.addAll(con.getProducts());
        

        con.close();

        /*for (int i=0; i<20; i++) {
            products.add(new GenericProduct("caja", "es una caja", "https://m.media-amazon.com/images/I/61eIVXuxyAS._AC_SY355_.jpg", 20.0, "caja acme"));
        }*/
    }

    public void testInitializeDB() {
        productsAux = new ArrayList<>();

        for (int i=0; i<20; i++) {
            productsAux.add(new GenericProduct("caja", "es una caja", "https://m.media-amazon.com/images/I/61eIVXuxyAS._AC_SY355_.jpg", 20.0, "caja acme"));
        }
        Conector con = new Conector();

        try {
            con.connect();
        } catch (Exception ex) {
            System.err.println("coneccion fallida");
        }

        con.clearDB();
        for (Product p:productsAux){
            con.addProduct((GenericProduct)p);
        }
        con.showProducts();
        con.close();
    }
}

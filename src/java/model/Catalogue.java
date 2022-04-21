package model;

import database.Connector;
import java.util.ArrayList;
import java.util.List;

public class Catalogue {
    private static final Catalogue INSTANCE = new Catalogue();
    
    private final List<Product> products;
    Connector con = Connector.getConector();
    
    private Catalogue() {
        products = new ArrayList();
    }
    
    public List<Product> getProducts() {
        return products;
    }
    
    public void testInitialize() {
        con.getProducts();
        products.addAll(con.getProducts());
        

        con.close();

        /*for (int i=0; i<20; i++) {
            products.add(new GenericProduct("caja", "es una caja", "https://m.media-amazon.com/images/I/61eIVXuxyAS._AC_SY355_.jpg", 20.0, "caja acme"));
        }*/
    }

    public void testInitializeDB() {
        List<GenericProduct> productsAux = new ArrayList<>();

        for (int i=0; i<20; i++) {
            productsAux.add(new GenericProduct("caja", "es una caja", "https://m.media-amazon.com/images/I/61eIVXuxyAS._AC_SY355_.jpg", 20.0, "caja acme"));
        }

        con.clearDB();
        for (Product p:productsAux){
            con.addProduct((GenericProduct)p);
        }
        con.showProducts();
        con.close();
    }    


    public static Catalogue getCatalogue() {
        return INSTANCE;
    }


}

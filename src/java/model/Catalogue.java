package model;

import java.util.ArrayList;
import java.util.List;

public class Catalogue {
    private final List<Product> products;
    
    public Catalogue() {
        products = new ArrayList();
    }
    
    public List<Product> getProducts() {
        return products;
    }
    
    public void testInitialize() {
        for (int i=0; i<20; i++) {
            products.add(new TestProduct());
        }
    }
}

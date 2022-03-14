package model;

import java.util.ArrayList;
import java.util.List;

public class Catalogue {
    private List<Product> products;
    
    public Catalogue() {
        products = new ArrayList();
    }
    
    public List<Product> getProducts() {
        return products;
    }
}

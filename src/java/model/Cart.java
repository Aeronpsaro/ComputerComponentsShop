package model;

import java.util.HashMap;
import java.util.Map;

public class Cart {
    private final Map<Product, Integer> ammounts;
    
    public Cart() {
        ammounts= new HashMap<>();
    }
    
    public void add(Product product) {
        if (ammounts.containsKey(product)) {
            ammounts.put(product, 1);
            return;
        }
        ammounts.put(product, ammounts.get(product)+1);
    }
    
    public void remove(Product product) {
        if (ammounts.containsKey(product)) ammounts.put(product, ammounts.get(product)-1);
    }
            
    public float getPrice() {
        float totalPrice = 0;
        for (Product product:ammounts.keySet()) {
            totalPrice += product.getPrice()*ammounts.get(product);
        }
        return totalPrice;
    }
    
    public Map<Product, Integer> getAmmounts() {
        return ammounts;
    }
    
}

package model;

import java.util.HashMap;
import java.util.Map;

public class Cart {
    private final Map<Integer, Integer> ammounts;
    
    public Cart() {
        ammounts= new HashMap<>();
    }
    
    public void add(Product product) {
        if (ammounts.containsKey(product.getId())) {
            ammounts.put(product.getId(), ammounts.get(product.getId())+1);
            return;
        }
        ammounts.put(product.getId(), 1);
    }
    
    public void remove(int id) {
        if (ammounts.containsKey(id)) ammounts.remove(id);
        //if (ammounts.containsKey(id)) ammounts.put(id, ammounts.get(id)-1);
    }
            
    /*public float getPrice() {
        float totalPrice = 0;
        for (Integer i:ammounts.keySet()) {
            totalPrice += product.getPrice()*ammounts.get(product);
        }
        return totalPrice;
    }*/
    
    public Map<Integer, Integer> getAmmounts() {
        return ammounts;
    }
    
}

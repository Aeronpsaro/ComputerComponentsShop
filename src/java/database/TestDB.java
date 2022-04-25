package database;

import model.GenericProduct;
import model.Product;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Usuario
 */
public class TestDB {
    Connector con = Connector.getConector();

    public void test1(){
        con.connect();
        GenericProduct product = new GenericProduct("p1", "esto es una prueba", "imagen", 12, "acme");
        GenericProduct product2 = new GenericProduct("p2", "esto es una prueba", "imagen", 15, "acme");
        GenericProduct product3 = new GenericProduct("p3", "esto es una prueba", "imagen", 10, "acme");

        con.clearDB();

        con.addProduct(product);
        con.addProduct(product2);
        con.addProduct(product3);

        con.increaseStock(1, 10);
        con.increaseStock(2, 20);
        con.increaseStock(3, 5);   
 
        con.reduceStock(2, 10);

        con.removeProduct(1);

        con.showProducts();
        con.close();
    }

    public void test2(){
        con.connect();
        con.clearDB();
        con.addOrder(12,new int[]{1,2,3,4},new int[]{10,10,10,10} );

        con.close();
    }

    public void test3(Product[] products){
        con.connect();
        for (Product p:products){
            con.addProduct((GenericProduct)p);
        }

        con.close();
    }

}
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Usuario
 */
public class TestDB {
    Conector con = new Conector();

    public void test1(){
        connect();
        Product product = new Product("p1", "esto es una prueba", "imagen", "tipo ejemplo", 12.0);
        Product product2 = new Product("p2", "esto es una prueba", "imagen", "tipo ejemplo", 15.0);
        Product product3 = new Product("p3", "esto es una prueba", "imagen", "tipo ejemplo", 10.0);

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
        close();
    }

    public void test2(){
        connect();
        con.clearDB();
        con.addOrder(12, new int[]{1,2,3,4} );

        close();
    }

    public void connect(){
        try {
            con.connect();
        } catch (Exception ex) {
            System.err.println("coneccion fallida");
        }
    }

    public void close(){
        con.close();
    }

}

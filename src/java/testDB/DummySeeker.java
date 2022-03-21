package testDB;


import model.Product;
import model.TestProduct;

public class DummySeeker {
    public static Product getProduct(int ID) {
        return new TestProduct();
    }
}

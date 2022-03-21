package control;

import java.io.IOException;
import javax.servlet.ServletException;
import model.Cart;
import model.Product;
import testDB.DummySeeker;

public class AddCommand extends FrontCommand {
    
    private Product getProduct(int ID) {
        return DummySeeker.getProduct(ID);
    }
    
    @Override
    public void process() throws ServletException, IOException {
        Product product = (Product) request.getAttribute("product");
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        cart.add(product);
        redirect("Cart.jsp");
    }
}

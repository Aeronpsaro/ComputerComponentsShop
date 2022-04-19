package control;

import java.io.IOException;
import javax.servlet.ServletException;
import model.Cart;
import model.Product;
import testDB.DummySeeker;

public class RemoveCommand extends FrontCommand {
    
    private Product getProduct(int ID) {
        return DummySeeker.getProduct(ID);
    }
    
    @Override
    public void process() throws ServletException, IOException {
        Product product = getProduct(Integer.parseInt(request.getParameter("product")));
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        cart.remove(product);
        redirect("/Cart.jsp");
    }
    
}

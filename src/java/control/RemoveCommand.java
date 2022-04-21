package control;

import database.Connector;
import java.io.IOException;
import javax.servlet.ServletException;
import model.Cart;
import model.Product;
import testDB.DummySeeker;

public class RemoveCommand extends FrontCommand {
    
    Connector con = Connector.getConector();

    private Product getProduct(int ID) {
        return con.getProductByID(ID);
    }
    
    @Override
    public void process() throws ServletException, IOException {
        Product product = getProduct(Integer.parseInt(request.getParameter("product")));
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        cart.remove(product);
        redirect("/Cart.jsp");
    }
    
}

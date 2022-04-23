package control;

import database.Connector;
import java.io.IOException;
import javax.servlet.ServletException;
import model.Cart;
import model.Product;

public class RemoveCommand extends FrontCommand {
    
    Connector con = Connector.getConector();

    private Product getProduct(int ID) {
        con.connect();
        return con.getProductByID(ID);
    }
    
    @Override
    public void process() throws ServletException, IOException {
        Product product = getProduct(Integer.parseInt(request.getParameter("product")));
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        cart.remove(product);
        con.close();
        redirect("/Cart.jsp");
    }
    
}

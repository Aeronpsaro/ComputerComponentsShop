package control;

import database.Connector;
import java.io.IOException;
import javax.servlet.ServletException;
import model.Cart;
import model.Product;
import testDB.DummySeeker;

public class SetAmmountCommand extends FrontCommand {
    Connector con = Connector.getConector();

    private Product getProduct(int ID) {
        return con.getProductByID(ID);
    }
    
    @Override
    public void process() throws ServletException, IOException {
        int productID = Integer.parseInt(request.getParameter("product"));
        Product product = getProduct(productID);
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        int productAmmount = Integer.parseInt(request.getParameter("cantidad"));
        cart.setProductAmmount(product, productAmmount);
        redirect("/Cart.jsp");
    }

}

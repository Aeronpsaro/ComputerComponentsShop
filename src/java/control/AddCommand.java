package control;

import database.Connector;
import java.io.IOException;
import java.util.Map;
import javax.servlet.ServletException;
import model.Cart;
import model.Product;

public class AddCommand extends FrontCommand {
    Connector con = Connector.getConector();

    private Product getProduct(int ID) {
        con.connect();
        return con.getProductByID(ID);
    }
    
    @Override
    public void process() throws ServletException, IOException {
        Product product = getProduct(Integer.parseInt(request.getParameter("product")));
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        //Map<Product, Integer> ammounts = cart.getAmmounts() ;       
        //int ammount = ammounts.get(product);
        
        if(cart.getAmmounts().containsKey(product)){
            if(product.getAmmount()> cart.getAmmounts().get(product)){
                cart.add(product);
            }
        }else{
            cart.add(product);
        }

        con.close();
        redirect("/Cart.jsp");
    }
}

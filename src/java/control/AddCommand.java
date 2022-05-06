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

        return con.getProductByID(ID);
    }
    
    @Override
    public void process() throws ServletException, IOException {
        Connector.connect();
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

        Connector.close();
        redirect("/Cart.jsp");
    }
}

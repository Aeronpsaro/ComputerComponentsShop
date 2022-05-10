package control;

import database.Connector;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import model.Cart;
import model.Catalogue;
import model.Order;
import model.Product;

public class ReturnToCartCommand extends FrontCommand {

    @Override
    public void process() throws ServletException, IOException {
        Connector con = Connector.getConector();
        Connector.connect();

        Catalogue catalogue = Catalogue.getCatalogue();
        int orderID = Integer.parseInt(request.getParameter("order"));
        Order ord = null;
        

        for(Order order:con.getOrders()){
            if(order.getId() == orderID) ord = order;
        }

        List<Integer> items = ord.getItems();
        List<Integer> ammounts = ord.getAmmounts();

        for(int i = 0; i<items.size(); i++){
            for(Product p:catalogue.getProducts()){
                if(p.getID() == items.get(i)){
                    p.setAmmount(p.getAmmount() + ammounts.get(i));
                    con.increaseStock(items.get(i), ammounts.get(i));
                }
            }
        }
        
        con.removeOrder(orderID);
        
        
        
        Cart cart = new Cart();
        for (int i = 0; i < ord.getItems().size(); i++) {
            Integer productID = ord.getItems().get(i);
            Integer ammount = ord.getAmmounts().get(i);
            Product product = con.getProductByID(productID);
            cart.add(product);
            cart.setProductAmmount(product, ammount);
        }
        Connector.close();
        request.getSession().setAttribute("cart", cart);
        
        redirect("/Cart.jsp");
    }

}

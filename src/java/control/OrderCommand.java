package control;

import database.Connector;
import java.io.IOException;
import java.util.Map;
import java.util.stream.Stream;
import javax.servlet.ServletException;
import model.Cart;
import model.Product;

public class OrderCommand extends FrontCommand {

    @Override
    public void process() throws ServletException, IOException {
        Connector connector = Connector.getConector();
        Connector.connect();
        Cart cart = (Cart)request.getSession().getAttribute("cart");
        Map<Product, Integer> ammountsMap = cart.getAmmounts();
        Stream<Product> productArray = ammountsMap.keySet().stream();
        Stream<Integer> productIntegerAmmounts = ammountsMap.values().stream();
        int[] productIDs = productArray.mapToInt(Product::getID).toArray();
        int[] productAmmounts = productIntegerAmmounts.mapToInt(Integer::intValue).toArray();
        connector.addOrder(0, productIDs, productAmmounts);
        Connector.close();
        request.getSession().setAttribute("price", cart.getPrice());
        request.getSession().setAttribute("cart", new Cart());
        redirect("/order.jsp");
    }

}

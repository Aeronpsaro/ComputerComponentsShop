package control;

import database.Connector;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import model.Catalogue;
import model.Order;
import model.Product;

public class RemoveOrderCommand extends FrontCommand {
    
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
                    con.reduceStock(items.get(i), ammounts.get(i));
                }
            }
        }
        

        con.removeOrder(orderID);
        
        Connector.close();
        redirect("/gestionarPedido.jsp");
    }

}

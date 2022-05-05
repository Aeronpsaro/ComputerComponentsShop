package control;

import database.Connector;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import model.Order;

public class RemoveOrderCommand extends FrontCommand {

    Connector con = Connector.getConector();

    private void removeOrder(int orderID) {
        con.removeOrder(orderID);
    }
    
    @Override
    public void process() throws ServletException, IOException {
        int orderID = Integer.parseInt(request.getParameter("order"));
        Order ord = null;
        Connector.connect();

        for(Order order:con.getOrders()){
            if(order.getId() == orderID) ord = order;
        }

        List<Integer> items = ord.getItems();
        List<Integer> ammounts = ord.getAmmounts();

        

        removeOrder(orderID);
        Connector.close();
        redirect("/gestionarPedido.jsp");
    }

}

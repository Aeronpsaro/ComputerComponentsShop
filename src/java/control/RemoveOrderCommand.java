package control;

import database.Connector;
import java.io.IOException;
import javax.servlet.ServletException;

public class RemoveOrderCommand extends FrontCommand {

    Connector con = Connector.getConector();

    private void removeOrder(int orderID) {
        con.removeOrder(orderID);
    }
    
    @Override
    public void process() throws ServletException, IOException {
        int orderID = Integer.parseInt(request.getParameter("order"));
        Connector.connect();
        removeOrder(orderID);
        Connector.close();
        redirect("/gestionarPedido.jsp");
    }

}

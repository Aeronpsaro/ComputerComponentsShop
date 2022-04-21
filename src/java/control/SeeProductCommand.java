package control;

import database.Connector;
import java.io.IOException;
import javax.servlet.ServletException;
import model.Product;
import testDB.DummySeeker;

public class SeeProductCommand extends FrontCommand {

    Connector con = Connector.getConector();

    private Product getProduct(int ID) {
        return con.getProductByID(ID);
    }
    
    @Override
    public void process() throws ServletException, IOException {
        int productID = Integer.parseInt(request.getParameter("product"));
        Product product = getProduct(productID);
        request.setAttribute("product", product);
        redirect("/producto.jsp");
    }

}

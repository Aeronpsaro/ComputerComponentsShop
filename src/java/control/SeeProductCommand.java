package control;

import java.io.IOException;
import javax.servlet.ServletException;
import model.Product;
import testDB.DummySeeker;

public class SeeProductCommand extends FrontCommand {

    private Product getProduct(int ID) {
        return DummySeeker.getProduct(ID);
    }
    
    @Override
    public void process() throws ServletException, IOException {
        int productID = Integer.parseInt(request.getParameter("product"));
        Product product = getProduct(productID);
        request.setAttribute("product", product);
        redirect("/producto.jsp");
    }

}

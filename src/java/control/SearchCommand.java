package control;

import database.Connector;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import model.Product;

public class SearchCommand extends FrontCommand {

    @Override
    public void process() throws ServletException, IOException {
        String searchQuery = (String) request.getParameter("query");
        List<Product> products = Connector.getConector().searchByName(searchQuery);
        request.getSession().setAttribute("queryResults", products);
        redirect("/buscador.jsp");
    }
    
}

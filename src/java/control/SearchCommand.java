package control;

import database.AndFilteredQuery;
import database.Connector;
import database.FilteredQuery;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import model.Product;

public class SearchCommand extends FrontCommand {

    @Override
    public void process() throws ServletException, IOException {
        String searchQuery = (String) request.getParameter("query");
        FilteredQuery filteredQuery = new AndFilteredQuery();
        filteredQuery.setQueryString(searchQuery);
        List<Product> products = filteredQuery.getQuery();
        request.getSession().setAttribute("queryResults", products);
        redirect("/buscador.jsp");
    }
    
}

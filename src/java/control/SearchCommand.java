package control;

import database.Connector;
import java.io.IOException;
import javax.servlet.ServletException;

public class SearchCommand extends FrontCommand {

    @Override
    public void process() throws ServletException, IOException {
        String searchQuery = (String) request.getSession().getAttribute("query");
        Connector.getConector().searchByName(searchQuery);
        redirect("buscador.jsp");
    }
    
}

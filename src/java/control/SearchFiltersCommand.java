package control;

import database.AndFilteredQuery;
import database.FilteredQuery;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import model.Product;

public class SearchFiltersCommand extends FrontCommand {

    @Override
    public void process() throws ServletException, IOException {
        Map<String, String> typeToClass = new HashMap<String, String>() {{
            put("Teclado", "TecladoProduct");
            put("Ratón", "RatonProduct");
            put("Pantalla", "PantallaProduct");
        }};
        
        String searchQuery = (String) request.getParameter("query");
        String type = (String) request.getParameter("type");
        boolean hideStockless = request.getParameter("stockFilter") != null;
        String minPrice = (String) request.getParameter("minPrice");
        String maxPrice = (String) request.getParameter("maxPrice"); 
        
        FilteredQuery filteredQuery = new AndFilteredQuery();
        filteredQuery.setQueryString(searchQuery);
        if (type != null && !"Cualquiera".equals(type)) filteredQuery.addTypeFilter(typeToClass.get(type));
        filteredQuery.addStockFilter(hideStockless);
        if (minPrice != null) filteredQuery.addMinPriceFilter(Double.parseDouble(minPrice));
        if (maxPrice != null) filteredQuery.addMaxPriceFilter(Double.parseDouble(maxPrice));
        
        List<Product> products = filteredQuery.getQuery();
        request.getSession().setAttribute("queryResults", products);
        redirect("/buscador.jsp");
    }
    
}

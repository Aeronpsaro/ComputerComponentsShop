package database;

import java.util.List;
import model.Product;

public class AndFilteredQuery implements FilteredQuery {
    
    private String queryString;
    
    public AndFilteredQuery() {
        queryString = "SELECT products.id, name, description, score, image, price, type, brand FROM products, stock WHERE products.id = stock.id";
    }
    
    private void prepare() {
        queryString += " AND ";
    }
    
    @Override
    public void setQueryString(String query) {
        prepare();
        queryString += "name LIKE '%"+query+"%'";
    }

    @Override
    public void addMinPriceFilter(double minPrice) {
        prepare();
        queryString += "price >= "+minPrice;
    }

    @Override
    public void addMaxPriceFilter(double maxPrice) {
        prepare();
        queryString += "price <= "+maxPrice;
    }

    @Override
    public void addTypeFilter(String type) {
        prepare();
        queryString += "type == "+type;
    }

    @Override
    public void addStockFilter(boolean stock) {
        if (stock) {
            prepare();
            queryString += "ammount > "+0;
        }
    }

    @Override
    public List<Product> getQuery() {
        return Connector.getConector().searchByQuery(queryString);
    }
    
}
